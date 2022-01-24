#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mtk_usb_phy_softc {int socid; int /*<<< orphan*/ * res; int /*<<< orphan*/  sr_coef; int /*<<< orphan*/  u2_base; int /*<<< orphan*/  fm_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MT7621_FM_FEG_BASE ; 
 int /*<<< orphan*/  MT7621_SR_COEF ; 
 int /*<<< orphan*/  MT7621_U2_BASE ; 
 int /*<<< orphan*/  MT7628_FM_FEG_BASE ; 
 int /*<<< orphan*/  MT7628_SR_COEF ; 
 int /*<<< orphan*/  MT7628_U2_BASE ; 
#define  MTK_SOC_MT7621 130 
#define  MTK_SOC_MT7628 129 
#define  MTK_SOC_MT7688 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RESET_ASSERT_DELAY ; 
 int /*<<< orphan*/  RESET_DEASSERT_DELAY ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYSCFG1_USB_HOST_MODE ; 
 int /*<<< orphan*/  SYSCTL_SYSCFG1 ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mtk_usb_phy_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct mtk_usb_phy_softc * sc = FUNC4(dev);
	phandle_t node;
	uint32_t val;
	int rid;

	sc->dev = dev;

	/* Get our FDT node and SoC id */
	node = FUNC13(dev);

	/* Now let's see about setting USB to host or device mode */
	/* XXX: is it the same for all SoCs? */
	val = FUNC9(SYSCTL_SYSCFG1);
	if (FUNC1(node, "mtk,usb-device"))
		val &= ~SYSCFG1_USB_HOST_MODE;
	else
		val |= SYSCFG1_USB_HOST_MODE;
	FUNC10(SYSCTL_SYSCFG1, val);

	/* If we have clocks defined - enable them */
	if (FUNC1(node, "clocks"))
		FUNC6(dev);

	/* If we have resets defined - perform a reset sequence */
	if (FUNC1(node, "resets")) {
		FUNC7(dev);
		FUNC0(RESET_ASSERT_DELAY);
		FUNC8(dev);
		FUNC0(RESET_DEASSERT_DELAY);
	}

	/* Careful, some devices actually require resources */
	if (FUNC1(node, "reg")) {
		rid = 0;
		sc->res = FUNC2(dev, SYS_RES_MEMORY, &rid,
		    RF_ACTIVE);
		if (sc->res == NULL) {
			FUNC5(dev, "could not map memory\n");
			return (ENXIO);
		}
	} else {
		sc->res = NULL;
	}

	/* Some SoCs require specific USB PHY init... handle these */
	switch (sc->socid) {
	case MTK_SOC_MT7628: /* Fallthrough */
	case MTK_SOC_MT7688:
		if (sc->res == NULL)
			return (ENXIO);
		sc->fm_base = MT7628_FM_FEG_BASE;
		sc->u2_base = MT7628_U2_BASE;
		sc->sr_coef = MT7628_SR_COEF;
		FUNC12(dev);
		break;
	case MTK_SOC_MT7621:
		if (sc->res == NULL)
			return (ENXIO);
		sc->fm_base = MT7621_FM_FEG_BASE;
		sc->u2_base = MT7621_U2_BASE;
		sc->sr_coef = MT7621_SR_COEF;
		FUNC11(dev);
		break;
	}

	/* We no longer need the resources, release them */
	if (sc->res != NULL)
		FUNC3(dev, SYS_RES_MEMORY, 0, sc->res);

	return (0);
}