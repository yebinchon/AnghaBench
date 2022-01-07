
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz8995ma_softc {int dummy; } ;
typedef int device_t ;


 int KSZ8995MA_LOCK_ASSERT (struct ksz8995ma_softc*,int ) ;
 int KSZ8995MA_UNLOCK (struct ksz8995ma_softc*) ;
 int MA_OWNED ;
 struct ksz8995ma_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ksz8995ma_unlock(device_t dev)
{
 struct ksz8995ma_softc *sc;

 sc = device_get_softc(dev);

 KSZ8995MA_LOCK_ASSERT(sc, MA_OWNED);
 KSZ8995MA_UNLOCK(sc);
}
