
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct nf10bmac_softc {int nf10bmac_if_flags; int nf10bmac_media; int * nf10bmac_rx_irq_res; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; struct nf10bmac_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int IFCAP_POLLING ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int NF10BMAC_LOCK (struct nf10bmac_softc*) ;
 int NF10BMAC_RX_INTR_CLEAR_DIS (struct nf10bmac_softc*) ;
 int NF10BMAC_RX_INTR_ENABLE (struct nf10bmac_softc*) ;
 int NF10BMAC_UNLOCK (struct nf10bmac_softc*) ;




 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int nf10bmac_init_locked (struct nf10bmac_softc*) ;
 int nf10bmac_poll ;
 int nf10bmac_stop_locked (struct nf10bmac_softc*) ;

__attribute__((used)) static int
nf10bmac_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct nf10bmac_softc *sc;
 struct ifreq *ifr;
 int error, mask;

 error = 0;
 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 switch (command) {
 case 129:
  NF10BMAC_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->nf10bmac_if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI)) != 0)
                             ;
   else
    nf10bmac_init_locked(sc);
  } else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   nf10bmac_stop_locked(sc);
  sc->nf10bmac_if_flags = ifp->if_flags;
  NF10BMAC_UNLOCK(sc);
  break;
 case 130:
  NF10BMAC_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
                NF10BMAC_UNLOCK(sc);
                break;
 case 131:
 case 128:
                error = ifmedia_ioctl(ifp, ifr, &sc->nf10bmac_media, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
