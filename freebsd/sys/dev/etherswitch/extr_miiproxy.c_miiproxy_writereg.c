
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miiproxy_softc {int * mdio; } ;
typedef int device_t ;


 int MDIO_WRITEREG (int *,int,int,int) ;
 struct miiproxy_softc* device_get_softc (int ) ;

__attribute__((used)) static int
miiproxy_writereg(device_t dev, int phy, int reg, int val)
{
 struct miiproxy_softc *sc = device_get_softc(dev);

 if (sc->mdio != ((void*)0))
  return (MDIO_WRITEREG(sc->mdio, phy, reg, val));
 return (-1);
}
