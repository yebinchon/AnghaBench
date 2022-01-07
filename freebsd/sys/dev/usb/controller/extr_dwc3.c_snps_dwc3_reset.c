
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snps_dwc3_softc {scalar_t__ usb3_phy; scalar_t__ usb2_phy; } ;


 int DELAY (int) ;
 int DWC3_GCTL ;
 int DWC3_GCTL_CORESOFTRESET ;
 int DWC3_GUSB2PHYCFG0 ;
 int DWC3_GUSB2PHYCFG0_PHYSOFTRST ;
 int DWC3_GUSB3PIPECTL0 ;
 int DWC3_GUSB3PIPECTL0_PHYSOFTRST ;
 int DWC3_READ (struct snps_dwc3_softc*,int ) ;
 int DWC3_WRITE (struct snps_dwc3_softc*,int ,int ) ;
 int phy_enable (scalar_t__) ;

__attribute__((used)) static void
snps_dwc3_reset(struct snps_dwc3_softc *sc)
{
 uint32_t gctl, phy2, phy3;

 if (sc->usb2_phy)
  phy_enable(sc->usb2_phy);
 if (sc->usb3_phy)
  phy_enable(sc->usb3_phy);

 gctl = DWC3_READ(sc, DWC3_GCTL);
 gctl |= DWC3_GCTL_CORESOFTRESET;
 DWC3_WRITE(sc, DWC3_GCTL, gctl);

 phy2 = DWC3_READ(sc, DWC3_GUSB2PHYCFG0);
 phy2 |= DWC3_GUSB2PHYCFG0_PHYSOFTRST;
 DWC3_WRITE(sc, DWC3_GUSB2PHYCFG0, phy2);

 phy3 = DWC3_READ(sc, DWC3_GUSB3PIPECTL0);
 phy3 |= DWC3_GUSB3PIPECTL0_PHYSOFTRST;
 DWC3_WRITE(sc, DWC3_GUSB3PIPECTL0, phy3);

 DELAY(1000);

 phy2 &= ~DWC3_GUSB2PHYCFG0_PHYSOFTRST;
 DWC3_WRITE(sc, DWC3_GUSB2PHYCFG0, phy2);

 phy3 &= ~DWC3_GUSB3PIPECTL0_PHYSOFTRST;
 DWC3_WRITE(sc, DWC3_GUSB3PIPECTL0, phy3);

 gctl &= ~DWC3_GCTL_CORESOFTRESET;
 DWC3_WRITE(sc, DWC3_GCTL, gctl);

}
