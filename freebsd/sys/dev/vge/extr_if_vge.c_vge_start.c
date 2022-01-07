
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int dummy; } ;
struct ifnet {struct vge_softc* if_softc; } ;


 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 int vge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
vge_start(struct ifnet *ifp)
{
 struct vge_softc *sc;

 sc = ifp->if_softc;
 VGE_LOCK(sc);
 vge_start_locked(ifp);
 VGE_UNLOCK(sc);
}
