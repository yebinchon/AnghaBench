
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct rl_softc {int rl_if_flags; int rl_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; struct rl_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int RL_IMR ;
 int RL_INTRS ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;






 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int rl_init_locked (struct rl_softc*) ;
 int rl_poll ;
 int rl_rxfilter (struct rl_softc*) ;
 int rl_stop (struct rl_softc*) ;

__attribute__((used)) static int
rl_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 struct mii_data *mii;
 struct rl_softc *sc = ifp->if_softc;
 int error = 0, mask;

 switch (command) {
 case 129:
  RL_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING &&
       ((ifp->if_flags ^ sc->rl_if_flags) &
                            (IFF_PROMISC | IFF_ALLMULTI)))
    rl_rxfilter(sc);
                        else
    rl_init_locked(sc);
                } else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   rl_stop(sc);
  sc->rl_if_flags = ifp->if_flags;
  RL_UNLOCK(sc);
  break;
 case 133:
 case 132:
  RL_LOCK(sc);
  rl_rxfilter(sc);
  RL_UNLOCK(sc);
  break;
 case 131:
 case 128:
  mii = device_get_softc(sc->rl_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case 130:
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_WOL) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL) != 0) {
   if ((mask & IFCAP_WOL_UCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_UCAST;
   if ((mask & IFCAP_WOL_MCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MCAST;
   if ((mask & IFCAP_WOL_MAGIC) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  }
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
