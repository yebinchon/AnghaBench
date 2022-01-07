
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17x_softc {int dummy; } ;
typedef int device_t ;


 int IP17X_LOCK (struct ip17x_softc*) ;
 int IP17X_LOCK_ASSERT (struct ip17x_softc*,int ) ;
 int MA_NOTOWNED ;
 struct ip17x_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ip17x_lock(device_t dev)
{
 struct ip17x_softc *sc;

 sc = device_get_softc(dev);
 IP17X_LOCK_ASSERT(sc, MA_NOTOWNED);
 IP17X_LOCK(sc);
}
