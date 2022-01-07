
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_softc {int vr_flags; struct ifnet* vr_ifp; } ;
struct ifnet {int if_flags; } ;
typedef int device_t ;


 int IFF_UP ;
 int VR_F_SUSPENDED ;
 int VR_LOCK (struct vr_softc*) ;
 int VR_UNLOCK (struct vr_softc*) ;
 struct vr_softc* device_get_softc (int ) ;
 int vr_clrwol (struct vr_softc*) ;
 int vr_init_locked (struct vr_softc*) ;
 int vr_reset (struct vr_softc*) ;

__attribute__((used)) static int
vr_resume(device_t dev)
{
 struct vr_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 VR_LOCK(sc);
 ifp = sc->vr_ifp;
 vr_clrwol(sc);
 vr_reset(sc);
 if (ifp->if_flags & IFF_UP)
  vr_init_locked(sc);

 sc->vr_flags &= ~VR_F_SUSPENDED;
 VR_UNLOCK(sc);

 return (0);
}
