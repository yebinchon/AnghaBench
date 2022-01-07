
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dwc_softc {int mii_clk; } ;
typedef int device_t ;


 int DELAY (int) ;
 int GMII_ADDRESS ;
 int GMII_ADDRESS_CR_SHIFT ;
 int GMII_ADDRESS_GB ;
 int GMII_ADDRESS_GR_MASK ;
 int GMII_ADDRESS_GR_SHIFT ;
 int GMII_ADDRESS_PA_MASK ;
 int GMII_ADDRESS_PA_SHIFT ;
 int GMII_DATA ;
 int READ4 (struct dwc_softc*,int ) ;
 int WRITE4 (struct dwc_softc*,int ,int) ;
 struct dwc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dwc_miibus_read_reg(device_t dev, int phy, int reg)
{
 struct dwc_softc *sc;
 uint16_t mii;
 size_t cnt;
 int rv = 0;

 sc = device_get_softc(dev);

 mii = ((phy & GMII_ADDRESS_PA_MASK) << GMII_ADDRESS_PA_SHIFT)
     | ((reg & GMII_ADDRESS_GR_MASK) << GMII_ADDRESS_GR_SHIFT)
     | (sc->mii_clk << GMII_ADDRESS_CR_SHIFT)
     | GMII_ADDRESS_GB;

 WRITE4(sc, GMII_ADDRESS, mii);

 for (cnt = 0; cnt < 1000; cnt++) {
  if (!(READ4(sc, GMII_ADDRESS) & GMII_ADDRESS_GB)) {
   rv = READ4(sc, GMII_DATA);
   break;
  }
  DELAY(10);
 }

 return rv;
}
