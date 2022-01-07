
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_hdr_size; int vtnet_flags; int vtnet_rx_new_clsize; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_mtu; int if_drv_flags; } ;
struct ether_vlan_header {int dummy; } ;


 int EINVAL ;
 int ETHERMIN ;
 int IFF_DRV_RUNNING ;
 int MCLBYTES ;
 int MJUM9BYTES ;
 int MJUMPAGESIZE ;
 int VTNET_FLAG_MRG_RXBUFS ;
 int VTNET_MAX_MTU ;
 int vtnet_init_locked (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_change_mtu(struct vtnet_softc *sc, int new_mtu)
{
 struct ifnet *ifp;
 int frame_size, clsize;

 ifp = sc->vtnet_ifp;

 if (new_mtu < ETHERMIN || new_mtu > VTNET_MAX_MTU)
  return (EINVAL);

 frame_size = sc->vtnet_hdr_size + sizeof(struct ether_vlan_header) +
     new_mtu;





 if (frame_size <= MCLBYTES) {
  clsize = MCLBYTES;
 } else if ((sc->vtnet_flags & VTNET_FLAG_MRG_RXBUFS) == 0) {

  if (frame_size > MJUM9BYTES)
   return (EINVAL);
  clsize = MJUM9BYTES;
 } else
  clsize = MJUMPAGESIZE;

 ifp->if_mtu = new_mtu;
 sc->vtnet_rx_new_clsize = clsize;

 if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  vtnet_init_locked(sc);
 }

 return (0);
}
