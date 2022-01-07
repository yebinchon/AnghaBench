
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct age_softc* if_softc; } ;
struct age_softc {int dummy; } ;


 int AGE_LOCK (struct age_softc*) ;
 int AGE_UNLOCK (struct age_softc*) ;
 int age_start_locked (struct ifnet*) ;

__attribute__((used)) static void
age_start(struct ifnet *ifp)
{
        struct age_softc *sc;

 sc = ifp->if_softc;
 AGE_LOCK(sc);
 age_start_locked(ifp);
 AGE_UNLOCK(sc);
}
