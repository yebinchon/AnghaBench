
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc_head {int dummy; } ;
struct vxlan_softc {int vxl_flags; struct ifnet* vxl_mc_ifp; } ;
struct ifnet {int dummy; } ;


 int LIST_INSERT_HEAD (struct vxlan_softc_head*,struct vxlan_softc*,int ) ;
 int VXLAN_FLAG_TEARDOWN ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 int vxl_ifdetach_list ;

__attribute__((used)) static void
vxlan_ifdetach(struct vxlan_softc *sc, struct ifnet *ifp,
    struct vxlan_softc_head *list)
{

 VXLAN_WLOCK(sc);

 if (sc->vxl_mc_ifp != ifp)
  goto out;
 if (sc->vxl_flags & VXLAN_FLAG_TEARDOWN)
  goto out;

 sc->vxl_flags |= VXLAN_FLAG_TEARDOWN;
 LIST_INSERT_HEAD(list, sc, vxl_ifdetach_list);

out:
 VXLAN_WUNLOCK(sc);
}
