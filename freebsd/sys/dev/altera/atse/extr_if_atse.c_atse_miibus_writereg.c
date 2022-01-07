
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atse_softc {int atse_phy_addr; } ;
typedef int device_t ;


 int PHY_WRITE_2 (struct atse_softc*,int,int) ;
 struct atse_softc* device_get_softc (int ) ;

int
atse_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct atse_softc *sc;

 sc = device_get_softc(dev);





 if (phy != sc->atse_phy_addr) {
  return (0);
 }

 PHY_WRITE_2(sc, reg, data);
 return (0);
}
