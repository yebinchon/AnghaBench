
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_flags; int vxl_vso_mc_index; scalar_t__ vxl_refcnt; int vxl_callout; int vxl_lock; struct vxlan_socket* vxl_sock; struct ifnet* vxl_ifp; } ;
struct vxlan_socket {int dummy; } ;
struct ifnet {int if_drv_flags; int if_flags; } ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int LINK_STATE_DOWN ;
 int MPASS (int) ;
 int VXLAN_FLAG_TEARDOWN ;
 int VXLAN_LOCK_WASSERT (struct vxlan_softc*) ;
 int VXLAN_WLOCK (struct vxlan_softc*) ;
 int VXLAN_WUNLOCK (struct vxlan_softc*) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int hz ;
 int if_link_state_change (struct ifnet*,int ) ;
 int rm_sleep (struct vxlan_softc*,int *,int ,char*,int ) ;
 int vxlan_free_multicast (struct vxlan_softc*) ;
 int vxlan_socket_mc_release_group_by_idx (struct vxlan_socket*,int) ;
 int vxlan_socket_release (struct vxlan_socket*) ;
 int vxlan_socket_remove_softc (struct vxlan_socket*,struct vxlan_softc*) ;
 int vxlan_teardown_complete (struct vxlan_softc*) ;

__attribute__((used)) static void
vxlan_teardown_locked(struct vxlan_softc *sc)
{
 struct ifnet *ifp;
 struct vxlan_socket *vso;

 ifp = sc->vxl_ifp;

 VXLAN_LOCK_WASSERT(sc);
 MPASS(sc->vxl_flags & VXLAN_FLAG_TEARDOWN);

 ifp->if_flags &= ~IFF_UP;
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 callout_stop(&sc->vxl_callout);
 vso = sc->vxl_sock;
 sc->vxl_sock = ((void*)0);

 VXLAN_WUNLOCK(sc);
 if_link_state_change(ifp, LINK_STATE_DOWN);

 if (vso != ((void*)0)) {
  vxlan_socket_remove_softc(vso, sc);

  if (sc->vxl_vso_mc_index != -1) {
   vxlan_socket_mc_release_group_by_idx(vso,
       sc->vxl_vso_mc_index);
   sc->vxl_vso_mc_index = -1;
  }
 }

 VXLAN_WLOCK(sc);
 while (sc->vxl_refcnt != 0)
  rm_sleep(sc, &sc->vxl_lock, 0, "vxldrn", hz);
 VXLAN_WUNLOCK(sc);

 callout_drain(&sc->vxl_callout);

 vxlan_free_multicast(sc);
 if (vso != ((void*)0))
  vxlan_socket_release(vso);

 vxlan_teardown_complete(sc);
}
