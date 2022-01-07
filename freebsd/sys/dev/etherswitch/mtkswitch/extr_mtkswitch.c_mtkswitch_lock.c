
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int dummy; } ;
typedef int device_t ;


 int MA_NOTOWNED ;
 int MTKSWITCH_LOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 struct mtkswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mtkswitch_lock(device_t dev)
{
        struct mtkswitch_softc *sc = device_get_softc(dev);

 MTKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 MTKSWITCH_LOCK(sc);
}
