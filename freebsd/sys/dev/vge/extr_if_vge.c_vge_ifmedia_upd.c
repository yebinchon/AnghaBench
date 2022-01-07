
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int dummy; } ;
struct ifnet {struct vge_softc* if_softc; } ;


 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 int vge_ifmedia_upd_locked (struct vge_softc*) ;

__attribute__((used)) static int
vge_ifmedia_upd(struct ifnet *ifp)
{
 struct vge_softc *sc;
 int error;

 sc = ifp->if_softc;
 VGE_LOCK(sc);
 error = vge_ifmedia_upd_locked(sc);
 VGE_UNLOCK(sc);

 return (error);
}
