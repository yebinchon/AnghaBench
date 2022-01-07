
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int dummy; } ;
struct ifnet {struct vte_softc* if_softc; } ;


 int VTE_LOCK (struct vte_softc*) ;
 int VTE_UNLOCK (struct vte_softc*) ;
 int vte_start_locked (struct vte_softc*) ;

__attribute__((used)) static void
vte_start(struct ifnet *ifp)
{
 struct vte_softc *sc;

 sc = ifp->if_softc;
 VTE_LOCK(sc);
 vte_start_locked(sc);
 VTE_UNLOCK(sc);
}
