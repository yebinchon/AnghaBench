
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_softc {int dummy; } ;
struct ifnet {struct vr_softc* if_softc; } ;


 int VR_LOCK (struct vr_softc*) ;
 int VR_UNLOCK (struct vr_softc*) ;
 int vr_start_locked (struct ifnet*) ;

__attribute__((used)) static void
vr_start(struct ifnet *ifp)
{
 struct vr_softc *sc;

 sc = ifp->if_softc;
 VR_LOCK(sc);
 vr_start_locked(ifp);
 VR_UNLOCK(sc);
}
