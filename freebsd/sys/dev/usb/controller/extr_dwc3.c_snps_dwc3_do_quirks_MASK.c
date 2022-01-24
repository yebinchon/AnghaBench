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
struct snps_dwc3_softc {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GUCTL1 ; 
 int /*<<< orphan*/  DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS ; 
 int /*<<< orphan*/  DWC3_GUSB2PHYCFG0 ; 
 int /*<<< orphan*/  DWC3_GUSB2PHYCFG0_ENBLSLPM ; 
 int /*<<< orphan*/  DWC3_GUSB2PHYCFG0_SUSPENDUSB20 ; 
 int /*<<< orphan*/  DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS ; 
 int /*<<< orphan*/  DWC3_GUSB3PIPECTL0 ; 
 int /*<<< orphan*/  DWC3_GUSB3PIPECTL0_DELAYP1TRANS ; 
 int /*<<< orphan*/  FUNC0 (struct snps_dwc3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snps_dwc3_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct snps_dwc3_softc *sc)
{
	uint32_t reg;

	reg = FUNC0(sc, DWC3_GUSB2PHYCFG0);
	if (FUNC2(sc->node, "snps,dis-u2-freeclk-exists-quirk"))
		reg &= ~DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS;
	else
		reg |= DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS;
	if (FUNC2(sc->node, "snps,dis_u2_susphy_quirk"))
		reg &= ~DWC3_GUSB2PHYCFG0_SUSPENDUSB20;
	else
		reg |= DWC3_GUSB2PHYCFG0_SUSPENDUSB20;
	if (FUNC2(sc->node, "snps,dis_enblslpm_quirk"))
		reg &= ~DWC3_GUSB2PHYCFG0_ENBLSLPM;
	else
		reg |= DWC3_GUSB2PHYCFG0_ENBLSLPM;

	FUNC1(sc, DWC3_GUSB2PHYCFG0, reg);

	reg = FUNC0(sc, DWC3_GUCTL1);
	if (FUNC2(sc->node, "snps,dis-tx-ipgap-linecheck-quirk"))
		reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
	FUNC1(sc, DWC3_GUCTL1, reg);

	if (FUNC2(sc->node, "snps,dis-del-phy-power-chg-quirk")) {
		reg = FUNC0(sc, DWC3_GUSB3PIPECTL0);
		reg |= DWC3_GUSB3PIPECTL0_DELAYP1TRANS;
		FUNC1(sc, DWC3_GUSB3PIPECTL0, reg);
	}
}