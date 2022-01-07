
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int dummy; } ;
typedef int device_t ;


 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int MA_NOTOWNED ;
 struct arswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static void
arswitch_lock(device_t dev)
{
 struct arswitch_softc *sc = device_get_softc(dev);

 ARSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 ARSWITCH_LOCK(sc);
}
