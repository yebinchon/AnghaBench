#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct resource {int dummy; } ;
struct TYPE_3__ {int sc_phy_bits; int /*<<< orphan*/  sc_phy_type; } ;
struct TYPE_4__ {TYPE_1__ sc_otg; } ;
struct jz4780_dwc_otg_softc {scalar_t__ phy_clk; scalar_t__ otg_clk; TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DWC_OTG_PHY_UTMI ; 
 int /*<<< orphan*/  JZ_DWC2_GUSBCFG ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct jz4780_dwc_otg_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct jz4780_dwc_otg_softc *sc;
	struct resource *res;
	int err, rid;

	sc = FUNC5(dev);

	err = FUNC8(dev);
	if (err != 0)
		goto fail;

	err = FUNC9();
	if (err != 0) {
		FUNC6(dev, "CGU failed to enable OTG\n");
		goto fail;
	}

	/* Voodoo: Switch off VBUS overcurrent detection in OTG PHY */
	res = FUNC0(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (res != NULL) {
		uint32_t reg;

		reg = FUNC1(res, JZ_DWC2_GUSBCFG);
		reg |= 0xc;
		FUNC3(res, JZ_DWC2_GUSBCFG, reg);
		FUNC2(dev, SYS_RES_MEMORY, rid, res);
	}

	sc->base.sc_otg.sc_phy_type = DWC_OTG_PHY_UTMI;
	sc->base.sc_otg.sc_phy_bits = 16;

	err = FUNC7(dev);
	if (err != 0)
		goto fail;

	return (0);
fail:
	if (sc->otg_clk)
		FUNC4(sc->otg_clk);
	if (sc->phy_clk)
		FUNC4(sc->phy_clk);
	return (err);
}