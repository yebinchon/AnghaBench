
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
struct age_softc {struct ifnet* age_ifp; } ;
typedef int device_t ;


 int AGE_LOCK (struct age_softc*) ;
 int AGE_UNLOCK (struct age_softc*) ;
 int IFF_UP ;
 int age_init_locked (struct age_softc*) ;
 int age_phy_reset (struct age_softc*) ;
 struct age_softc* device_get_softc (int ) ;

__attribute__((used)) static int
age_resume(device_t dev)
{
 struct age_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 AGE_LOCK(sc);
 age_phy_reset(sc);
 ifp = sc->age_ifp;
 if ((ifp->if_flags & IFF_UP) != 0)
  age_init_locked(sc);

 AGE_UNLOCK(sc);

 return (0);
}
