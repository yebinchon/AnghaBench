
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nf10bmac_softc {int nf10bmac_tick; struct ifnet* nf10bmac_ifp; int nf10bmac_flags; int nf10bmac_eth_addr; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;


 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int * IF_LLADDR (struct ifnet*) ;
 int LINK_STATE_UP ;
 int NF10BMAC_FLAGS_LINK ;
 int NF10BMAC_LOCK_ASSERT (struct nf10bmac_softc*) ;
 int NF10BMAC_RX_INTR_CLEAR_DIS (struct nf10bmac_softc*) ;
 int NF10BMAC_RX_INTR_ENABLE (struct nf10bmac_softc*) ;
 int bcopy (int *,int *,int ) ;
 int callout_reset (int *,int ,int ,struct nf10bmac_softc*) ;
 int hz ;
 int if_link_state_change (struct ifnet*,int ) ;
 int nf10bmac_eat_packet_munch_munch (struct nf10bmac_softc*) ;
 int nf10bmac_reset (struct nf10bmac_softc*) ;
 int nf10bmac_stop_locked (struct nf10bmac_softc*) ;
 int nf10bmac_tick ;

__attribute__((used)) static void
nf10bmac_init_locked(struct nf10bmac_softc *sc)
{
 struct ifnet *ifp;
 uint8_t *eaddr;

 NF10BMAC_LOCK_ASSERT(sc);
 ifp = sc->nf10bmac_ifp;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;






 eaddr = IF_LLADDR(sc->nf10bmac_ifp);
 bcopy(eaddr, &sc->nf10bmac_eth_addr, ETHER_ADDR_LEN);



 nf10bmac_stop_locked(sc);

 nf10bmac_reset(sc);



 nf10bmac_eat_packet_munch_munch(sc);







 {
  NF10BMAC_RX_INTR_ENABLE(sc);
 }

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;


 sc->nf10bmac_flags = NF10BMAC_FLAGS_LINK;
 if_link_state_change(sc->nf10bmac_ifp, LINK_STATE_UP);




}
