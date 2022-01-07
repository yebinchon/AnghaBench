
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6060sw_softc {int dummy; } ;
typedef int device_t ;


 int E6060SW_LOCK (struct e6060sw_softc*) ;
 int E6060SW_LOCK_ASSERT (struct e6060sw_softc*,int ) ;
 int E6060SW_UNLOCK (struct e6060sw_softc*) ;
 int ENXIO ;
 int MA_NOTOWNED ;
 int MDIO_WRITEREG (int ,int,int,int) ;
 int device_get_parent (int ) ;
 struct e6060sw_softc* device_get_softc (int ) ;

__attribute__((used)) static int
e6060sw_writephy(device_t dev, int phy, int reg, int data)
{
 struct e6060sw_softc *sc;
 int err;

 sc = device_get_softc(dev);
 E6060SW_LOCK_ASSERT(sc, MA_NOTOWNED);

 if (phy < 0 || phy >= 32)
  return (ENXIO);
 if (reg < 0 || reg >= 32)
  return (ENXIO);

 E6060SW_LOCK(sc);
 err = MDIO_WRITEREG(device_get_parent(dev), phy, reg, data);
 E6060SW_UNLOCK(sc);

 return (err);
}
