
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atse_softc {int atse_phy_addr; } ;
typedef int device_t ;


 int PHY_READ_2 (struct atse_softc*,int) ;
 struct atse_softc* device_get_softc (int ) ;

int
atse_miibus_readreg(device_t dev, int phy, int reg)
{
 struct atse_softc *sc;
 int val;

 sc = device_get_softc(dev);





 if (phy != sc->atse_phy_addr) {
  return (0);
 }

 val = PHY_READ_2(sc, reg);

 return (val);
}
