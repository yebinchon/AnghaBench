
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_softc {int vr_flags; } ;
typedef int device_t ;


 int VR_F_SUSPENDED ;
 int VR_LOCK (struct vr_softc*) ;
 int VR_UNLOCK (struct vr_softc*) ;
 struct vr_softc* device_get_softc (int ) ;
 int vr_setwol (struct vr_softc*) ;
 int vr_stop (struct vr_softc*) ;

__attribute__((used)) static int
vr_suspend(device_t dev)
{
 struct vr_softc *sc;

 sc = device_get_softc(dev);

 VR_LOCK(sc);
 vr_stop(sc);
 vr_setwol(sc);
 sc->vr_flags |= VR_F_SUSPENDED;
 VR_UNLOCK(sc);

 return (0);
}
