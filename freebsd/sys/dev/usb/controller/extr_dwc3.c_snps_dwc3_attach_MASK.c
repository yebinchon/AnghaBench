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
struct snps_dwc3_softc {int /*<<< orphan*/  usb3_phy; int /*<<< orphan*/  node; int /*<<< orphan*/  usb2_phy; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GSNPSID ; 
 int /*<<< orphan*/  FUNC0 (struct snps_dwc3_softc*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct snps_dwc3_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snps_dwc3_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct snps_dwc3_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct snps_dwc3_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct snps_dwc3_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct snps_dwc3_softc*) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct snps_dwc3_softc *sc;
	int rid = 0;

	sc = FUNC2(dev);
	sc->dev = dev;

	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC3(dev, "Failed to map memory\n");
		return (ENXIO);
	}
	sc->bst = FUNC6(sc->mem_res);
	sc->bsh = FUNC5(sc->mem_res);

	if (bootverbose)
		FUNC3(dev, "snps id: %x\n", FUNC0(sc, DWC3_GSNPSID));

	/* Get the phys */
	FUNC4(dev, sc->node, "usb2-phy", &sc->usb2_phy);
	FUNC4(dev, sc->node, "usb3-phy", &sc->usb3_phy);

	FUNC11(sc);
	FUNC8(sc);
	FUNC9(sc);
	FUNC10(sc);
#if 0
	snsp_dwc3_dump_regs(sc);
#endif
	FUNC7(dev);

	return (0);
}