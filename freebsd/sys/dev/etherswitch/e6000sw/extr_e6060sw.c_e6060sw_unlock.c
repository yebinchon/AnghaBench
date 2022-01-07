
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6060sw_softc {int dummy; } ;
typedef int device_t ;


 int E6060SW_LOCK_ASSERT (struct e6060sw_softc*,int ) ;
 int E6060SW_UNLOCK (struct e6060sw_softc*) ;
 int MA_OWNED ;
 struct e6060sw_softc* device_get_softc (int ) ;

__attribute__((used)) static void
e6060sw_unlock(device_t dev)
{
 struct e6060sw_softc *sc;

 sc = device_get_softc(dev);

 E6060SW_LOCK_ASSERT(sc, MA_OWNED);
 E6060SW_UNLOCK(sc);
}
