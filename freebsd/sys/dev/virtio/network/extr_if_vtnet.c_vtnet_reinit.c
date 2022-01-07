
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_flags; int vtnet_hwaddr; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_hwassist; } ;


 int CSUM_IP6_TSO ;
 int CSUM_IP_TSO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int VTNET_CSUM_OFFLOAD ;
 int VTNET_CSUM_OFFLOAD_IPV6 ;
 int VTNET_FLAG_CTRL_VQ ;
 int bcopy (int ,int ,int ) ;
 int vtnet_enable_interrupts (struct vtnet_softc*) ;
 int vtnet_init_rx_filters (struct vtnet_softc*) ;
 int vtnet_init_rxtx_queues (struct vtnet_softc*) ;
 int vtnet_set_active_vq_pairs (struct vtnet_softc*) ;
 int vtnet_set_hwaddr (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_reinit(struct vtnet_softc *sc)
{
 struct ifnet *ifp;
 int error;

 ifp = sc->vtnet_ifp;


 bcopy(IF_LLADDR(ifp), sc->vtnet_hwaddr, ETHER_ADDR_LEN);
 vtnet_set_hwaddr(sc);

 vtnet_set_active_vq_pairs(sc);

 ifp->if_hwassist = 0;
 if (ifp->if_capenable & IFCAP_TXCSUM)
  ifp->if_hwassist |= VTNET_CSUM_OFFLOAD;
 if (ifp->if_capenable & IFCAP_TXCSUM_IPV6)
  ifp->if_hwassist |= VTNET_CSUM_OFFLOAD_IPV6;
 if (ifp->if_capenable & IFCAP_TSO4)
  ifp->if_hwassist |= CSUM_IP_TSO;
 if (ifp->if_capenable & IFCAP_TSO6)
  ifp->if_hwassist |= CSUM_IP6_TSO;

 if (sc->vtnet_flags & VTNET_FLAG_CTRL_VQ)
  vtnet_init_rx_filters(sc);

 error = vtnet_init_rxtx_queues(sc);
 if (error)
  return (error);

 vtnet_enable_interrupts(sc);
 ifp->if_drv_flags |= IFF_DRV_RUNNING;

 return (0);
}
