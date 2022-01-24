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
struct usb_nop_xceiv_softc {scalar_t__ clk_freq; int /*<<< orphan*/  vcc_supply; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;
struct phynode_init_def {int /*<<< orphan*/  ofw_node; scalar_t__ id; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct usb_nop_xceiv_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct phynode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct phynode_init_def*) ; 
 int /*<<< orphan*/ * FUNC8 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_nop_xceiv_phynode_class ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct usb_nop_xceiv_softc *sc;
	struct phynode *phynode;
	struct phynode_init_def phy_init;
	phandle_t node;
	int error;

	sc = FUNC4(dev);
	sc->dev = dev;
	node = FUNC6(dev);

	/* Parse the optional properties */
	FUNC1(node, "clock-frequency", &sc->clk_freq, sizeof(uint32_t));

	error = FUNC3(dev, node, "main_clk", &sc->clk);
	if (error != 0 && sc->clk_freq != 0) {
		FUNC5(dev, "clock property is mandatory if clock-frequency is present\n");
		return (ENXIO);
	}

	FUNC9(dev, node, "vcc-supply", &sc->vcc_supply);

	phy_init.id = 0;
	phy_init.ofw_node = node;
	phynode = FUNC7(dev, &usb_nop_xceiv_phynode_class,
	    &phy_init);
	if (phynode == NULL) {
		FUNC5(dev, "failed to create USB NOP PHY\n");
		return (ENXIO);
	}
	if (FUNC8(phynode) == NULL) {
		FUNC5(dev, "failed to create USB NOP PHY\n");
		return (ENXIO);
	}

	FUNC0(FUNC2(node), dev);

	return (0);
}