
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miiproxy_softc {int * mdio; } ;
typedef int device_t ;


 int MDIO_READREG (int *,int,int) ;
 struct miiproxy_softc* device_get_softc (int ) ;

__attribute__((used)) static int
miiproxy_readreg(device_t dev, int phy, int reg)
{
 struct miiproxy_softc *sc = device_get_softc(dev);

 if (sc->mdio != ((void*)0))
  return (MDIO_READREG(sc->mdio, phy, reg));
 return (-1);
}
