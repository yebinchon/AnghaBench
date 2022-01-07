
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int MA_NOTOWNED ;
 int MDIO_READREG (int ,int,int) ;
 int UKSWITCH_LOCK (struct ukswitch_softc*) ;
 int UKSWITCH_LOCK_ASSERT (struct ukswitch_softc*,int ) ;
 int UKSWITCH_UNLOCK (struct ukswitch_softc*) ;
 int device_get_parent (int ) ;
 struct ukswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ukswitch_readphy(device_t dev, int phy, int reg)
{
 struct ukswitch_softc *sc;
 int data;

 sc = device_get_softc(dev);
 UKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);

 if (phy < 0 || phy >= 32)
  return (ENXIO);
 if (reg < 0 || reg >= 32)
  return (ENXIO);

 UKSWITCH_LOCK(sc);
 data = MDIO_READREG(device_get_parent(dev), phy, reg);
 UKSWITCH_UNLOCK(sc);

 return (data);
}
