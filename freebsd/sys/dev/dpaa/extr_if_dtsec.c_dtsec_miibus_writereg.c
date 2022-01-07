
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int sc_mdio; } ;
typedef int device_t ;


 int MIIBUS_WRITEREG (int ,int,int,int) ;
 struct dtsec_softc* device_get_softc (int ) ;

int
dtsec_miibus_writereg(device_t dev, int phy, int reg, int value)
{

 struct dtsec_softc *sc;

 sc = device_get_softc(dev);

 return (MIIBUS_WRITEREG(sc->sc_mdio, phy, reg, value));
}
