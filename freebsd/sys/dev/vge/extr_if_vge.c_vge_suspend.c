
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int vge_flags; } ;
typedef int device_t ;


 int VGE_FLAG_SUSPENDED ;
 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 struct vge_softc* device_get_softc (int ) ;
 int vge_setwol (struct vge_softc*) ;
 int vge_stop (struct vge_softc*) ;

__attribute__((used)) static int
vge_suspend(device_t dev)
{
 struct vge_softc *sc;

 sc = device_get_softc(dev);

 VGE_LOCK(sc);
 vge_stop(sc);
 vge_setwol(sc);
 sc->vge_flags |= VGE_FLAG_SUSPENDED;
 VGE_UNLOCK(sc);

 return (0);
}
