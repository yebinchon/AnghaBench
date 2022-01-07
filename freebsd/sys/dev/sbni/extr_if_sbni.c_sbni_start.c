
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {int dummy; } ;
struct ifnet {struct sbni_softc* if_softc; } ;


 int SBNI_LOCK (struct sbni_softc*) ;
 int SBNI_UNLOCK (struct sbni_softc*) ;
 int sbni_start_locked (struct ifnet*) ;

__attribute__((used)) static void
sbni_start(struct ifnet *ifp)
{
 struct sbni_softc *sc = ifp->if_softc;

 SBNI_LOCK(sc);
 sbni_start_locked(ifp);
 SBNI_UNLOCK(sc);
}
