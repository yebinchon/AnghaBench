
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_flags; } ;


 int VXLAN_FLAG_TEARDOWN ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 int vxlan_teardown_locked (struct vxlan_softc*) ;
 int vxlan_teardown_wait (struct vxlan_softc*) ;

__attribute__((used)) static void
vxlan_teardown(struct vxlan_softc *sc)
{

 VXLAN_WLOCK(sc);
 if (sc->vxl_flags & VXLAN_FLAG_TEARDOWN) {
  vxlan_teardown_wait(sc);
  VXLAN_WUNLOCK(sc);
  return;
 }

 sc->vxl_flags |= VXLAN_FLAG_TEARDOWN;
 vxlan_teardown_locked(sc);
}
