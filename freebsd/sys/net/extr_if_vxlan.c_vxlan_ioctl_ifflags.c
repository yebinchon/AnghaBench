
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {struct ifnet* vxl_ifp; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int vxlan_init (struct vxlan_softc*) ;
 int vxlan_teardown (struct vxlan_softc*) ;

__attribute__((used)) static int
vxlan_ioctl_ifflags(struct vxlan_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->vxl_ifp;

 if (ifp->if_flags & IFF_UP) {
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   vxlan_init(sc);
 } else {
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   vxlan_teardown(sc);
 }

 return (0);
}
