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
typedef  int uint32_t ;
struct snps_dwc3_softc {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GUSB2PHYCFG0 ; 
 int DWC3_GUSB2PHYCFG0_PHYIF ; 
 int FUNC0 (int) ; 
 int DWC3_GUSB2PHYCFG0_USBTRDTIM_16BITS ; 
 int DWC3_GUSB2PHYCFG0_USBTRDTIM_8BITS ; 
 int FUNC1 (struct snps_dwc3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snps_dwc3_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,void**) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct snps_dwc3_softc *sc)
{
	char *phy_type;
	uint32_t reg;
	int nphy_types;

	phy_type = NULL;
	nphy_types = FUNC3(sc->node, "phy_type", (void **)&phy_type);
	if (nphy_types <= 0)
		return;

	reg = FUNC1(sc, DWC3_GUSB2PHYCFG0);
	if (FUNC4(phy_type, "utmi_wide", 9) == 0) {
		reg &= ~(DWC3_GUSB2PHYCFG0_PHYIF | FUNC0(0xf));
		reg |= DWC3_GUSB2PHYCFG0_PHYIF |
			FUNC0(DWC3_GUSB2PHYCFG0_USBTRDTIM_16BITS);
	} else {
		reg &= ~(DWC3_GUSB2PHYCFG0_PHYIF | FUNC0(0xf));
		reg |= DWC3_GUSB2PHYCFG0_PHYIF |
			FUNC0(DWC3_GUSB2PHYCFG0_USBTRDTIM_8BITS);
	}
	FUNC2(sc, DWC3_GUSB2PHYCFG0, reg);
}