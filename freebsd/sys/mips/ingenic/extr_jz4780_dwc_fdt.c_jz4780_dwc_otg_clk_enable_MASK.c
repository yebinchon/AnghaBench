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
struct jz4780_dwc_otg_softc {int /*<<< orphan*/  phy_clk; int /*<<< orphan*/  otg_clk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct jz4780_dwc_otg_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct jz4780_dwc_otg_softc *sc;
	int err;

	sc = FUNC3(dev);

	/* Configure and enable phy clock */
	err = FUNC1(dev, 0, "otg_phy", &sc->phy_clk);
	if (err != 0) {
		FUNC4(dev, "unable to lookup %s clock\n", "otg_phy");
		return (err);
	}
	err = FUNC2(sc->phy_clk, 48000000, 0);
	if (err != 0) {
		FUNC4(dev, "unable to set %s clock to 48 kHZ\n",
		    "otg_phy");
		return (err);
	}
	err = FUNC0(sc->phy_clk);
	if (err != 0) {
		FUNC4(dev, "unable to enable %s clock\n", "otg_phy");
		return (err);
	}

	/* Configure and enable otg1 clock */
	err = FUNC1(dev, 0, "otg1", &sc->otg_clk);
	if (err != 0) {
		FUNC4(dev, "unable to lookup %s clock\n", "otg1");
		return (err);
	}
	err = FUNC0(sc->phy_clk);
	if (err != 0) {
		FUNC4(dev, "unable to enable %s clock\n", "otg1");
		return (err);
	}

	return (0);
}