
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int sc_mdio; } ;
typedef int device_t ;


 int MIIBUS_READREG (int ,int,int) ;
 struct dtsec_softc* device_get_softc (int ) ;

int
dtsec_miibus_readreg(device_t dev, int phy, int reg)
{
 struct dtsec_softc *sc;

 sc = device_get_softc(dev);

 return (MIIBUS_READREG(sc->sc_mdio, phy, reg));
}
