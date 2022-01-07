
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6000sw_softc {int dummy; } ;
typedef int device_t ;


 int E6000SW_LOCK (struct e6000sw_softc*) ;
 int E6000SW_LOCK_ASSERT (struct e6000sw_softc*,int ) ;
 int SA_UNLOCKED ;
 struct e6000sw_softc* device_get_softc (int ) ;

__attribute__((used)) static void
e6000sw_lock(device_t dev)
{
 struct e6000sw_softc *sc;

 sc = device_get_softc(dev);

 E6000SW_LOCK_ASSERT(sc, SA_UNLOCKED);
 E6000SW_LOCK(sc);
}
