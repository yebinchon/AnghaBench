
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17x_softc {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int IP17X_LOCK (struct ip17x_softc*) ;
 int IP17X_LOCK_ASSERT (struct ip17x_softc*,int ) ;
 int IP17X_UNLOCK (struct ip17x_softc*) ;
 int MA_NOTOWNED ;
 int MDIO_READREG (int ,int,int) ;
 int device_get_parent (int ) ;
 struct ip17x_softc* device_get_softc (int ) ;

int
ip17x_readphy(device_t dev, int phy, int reg)
{
 struct ip17x_softc *sc;
 int data;

 sc = device_get_softc(dev);
 IP17X_LOCK_ASSERT(sc, MA_NOTOWNED);

 if (phy < 0 || phy >= 32)
  return (ENXIO);
 if (reg < 0 || reg >= 32)
  return (ENXIO);

 IP17X_LOCK(sc);
 data = MDIO_READREG(device_get_parent(dev), phy, reg);
 IP17X_UNLOCK(sc);

 return (data);
}
