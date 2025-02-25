FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRCREV = "6d41f0a39d6423c8e57e92ebbe9f8c0333a63f72"
PV = "2025.01"

# remove patches already merged upstream
SRC_URI:remove = "\
    file://0001-board-toradex-verdin-imx8mm-add-4-GB-lpddr4-memory-s.patch \
    file://0002-board-toradex-verdin-imx8mm-increase-maximum-address.patch \
    file://0005-toradex-tdx-cfg-block-add-verdin-i.mx8m-mini-0090-pi.patch \
    file://0006-ARM-imx-verdin-imx8mm-Set-CAN-oscillator-frequency-b.patch \
    file://0001-verdin-imx8m-m-p-defconfig-update-fastboot-buffer-si.patch \
"

# remove patches that doesn't apply, but not required for Verdin iMX8M
SRC_URI:remove = "\
    file://0003-toradex-tdx-cfg-block-add-aquila-am69-sku-0088-pid4.patch \
    file://0004-toradex-tdx-cfg-block-add-verdin-imx95-sku-0089-pid4.patch \
"

SRC_URI:append = "\
    file://0001-ARM-dts-imx8mp-do-not-wrap-i.MX8M-binman-SPL-and-FIT.patch \
    file://0002-ARM-dts-imx8mm-do-not-wrap-i.MX8M-binman-SPL-and-FIT.patch \
    file://0001-imx8m-binman-add-tee-node.patch \
"
