
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int dummy; } ;
typedef int device_t ;


 int MA_OWNED ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_UNLOCK (struct mtkswitch_softc*) ;
 struct mtkswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mtkswitch_unlock(device_t dev)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 MTKSWITCH_UNLOCK(sc);
}
