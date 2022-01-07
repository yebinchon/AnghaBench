
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int dummy; } ;
typedef int device_t ;


 int MA_NOTOWNED ;
 int UKSWITCH_LOCK (struct ukswitch_softc*) ;
 int UKSWITCH_LOCK_ASSERT (struct ukswitch_softc*,int ) ;
 struct ukswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ukswitch_lock(device_t dev)
{
 struct ukswitch_softc *sc = device_get_softc(dev);

 UKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 UKSWITCH_LOCK(sc);
}
