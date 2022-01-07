
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_lock; int vxl_media; } ;
struct ifnet {struct vxlan_softc* if_softc; } ;


 int M_VXLAN ;
 int ether_ifdetach (struct ifnet*) ;
 int free (struct vxlan_softc*,int ) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int rm_destroy (int *) ;
 int vxlan_ftable_fini (struct vxlan_softc*) ;
 int vxlan_ftable_flush (struct vxlan_softc*,int) ;
 int vxlan_sysctl_destroy (struct vxlan_softc*) ;
 int vxlan_teardown (struct vxlan_softc*) ;

__attribute__((used)) static void
vxlan_clone_destroy(struct ifnet *ifp)
{
 struct vxlan_softc *sc;

 sc = ifp->if_softc;

 vxlan_teardown(sc);

 vxlan_ftable_flush(sc, 1);

 ether_ifdetach(ifp);
 if_free(ifp);
 ifmedia_removeall(&sc->vxl_media);

 vxlan_ftable_fini(sc);

 vxlan_sysctl_destroy(sc);
 rm_destroy(&sc->vxl_lock);
 free(sc, M_VXLAN);
}
