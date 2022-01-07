
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_softc {int dummy; } ;


 int VR_LOCK (struct vr_softc*) ;
 int VR_UNLOCK (struct vr_softc*) ;
 int vr_init_locked (struct vr_softc*) ;

__attribute__((used)) static void
vr_init(void *xsc)
{
 struct vr_softc *sc;

 sc = (struct vr_softc *)xsc;
 VR_LOCK(sc);
 vr_init_locked(sc);
 VR_UNLOCK(sc);
}
