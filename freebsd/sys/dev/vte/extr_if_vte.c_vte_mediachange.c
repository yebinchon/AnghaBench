
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int dummy; } ;
struct ifnet {struct vte_softc* if_softc; } ;


 int VTE_LOCK (struct vte_softc*) ;
 int VTE_UNLOCK (struct vte_softc*) ;
 int vte_mediachange_locked (struct ifnet*) ;

__attribute__((used)) static int
vte_mediachange(struct ifnet *ifp)
{
 struct vte_softc *sc;
 int error;

 sc = ifp->if_softc;
 VTE_LOCK(sc);
 error = vte_mediachange_locked(ifp);
 VTE_UNLOCK(sc);
 return (error);
}
