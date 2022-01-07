
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_flags; } ;


 int VXLAN_FLAG_TEARDOWN ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 int wakeup (struct vxlan_softc*) ;

__attribute__((used)) static void
vxlan_teardown_complete(struct vxlan_softc *sc)
{

 VXLAN_WLOCK(sc);
 sc->vxl_flags &= ~VXLAN_FLAG_TEARDOWN;
 wakeup(sc);
 VXLAN_WUNLOCK(sc);
}
