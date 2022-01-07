
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snps_dwc3_softc {int node; } ;


 int DWC3_GUCTL1 ;
 int DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS ;
 int DWC3_GUSB2PHYCFG0 ;
 int DWC3_GUSB2PHYCFG0_ENBLSLPM ;
 int DWC3_GUSB2PHYCFG0_SUSPENDUSB20 ;
 int DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS ;
 int DWC3_GUSB3PIPECTL0 ;
 int DWC3_GUSB3PIPECTL0_DELAYP1TRANS ;
 int DWC3_READ (struct snps_dwc3_softc*,int ) ;
 int DWC3_WRITE (struct snps_dwc3_softc*,int ,int ) ;
 scalar_t__ OF_hasprop (int ,char*) ;

__attribute__((used)) static void
snps_dwc3_do_quirks(struct snps_dwc3_softc *sc)
{
 uint32_t reg;

 reg = DWC3_READ(sc, DWC3_GUSB2PHYCFG0);
 if (OF_hasprop(sc->node, "snps,dis-u2-freeclk-exists-quirk"))
  reg &= ~DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS;
 else
  reg |= DWC3_GUSB2PHYCFG0_U2_FREECLK_EXISTS;
 if (OF_hasprop(sc->node, "snps,dis_u2_susphy_quirk"))
  reg &= ~DWC3_GUSB2PHYCFG0_SUSPENDUSB20;
 else
  reg |= DWC3_GUSB2PHYCFG0_SUSPENDUSB20;
 if (OF_hasprop(sc->node, "snps,dis_enblslpm_quirk"))
  reg &= ~DWC3_GUSB2PHYCFG0_ENBLSLPM;
 else
  reg |= DWC3_GUSB2PHYCFG0_ENBLSLPM;

 DWC3_WRITE(sc, DWC3_GUSB2PHYCFG0, reg);

 reg = DWC3_READ(sc, DWC3_GUCTL1);
 if (OF_hasprop(sc->node, "snps,dis-tx-ipgap-linecheck-quirk"))
  reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
 DWC3_WRITE(sc, DWC3_GUCTL1, reg);

 if (OF_hasprop(sc->node, "snps,dis-del-phy-power-chg-quirk")) {
  reg = DWC3_READ(sc, DWC3_GUSB3PIPECTL0);
  reg |= DWC3_GUSB3PIPECTL0_DELAYP1TRANS;
  DWC3_WRITE(sc, DWC3_GUSB3PIPECTL0, reg);
 }
}
