
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct octm_softc {int sc_flags; int sc_ifmedia; int sc_port; } ;
struct ifreq {scalar_t__ ifr_mtu; int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; scalar_t__ if_hdrlen; int if_capenable; struct octm_softc* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int sa_family; } ;


 int AF_INET ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;






 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int cvmx_mgmt_port_disable (int ) ;
 int cvmx_mgmt_port_set_max_packet_size (int ,scalar_t__) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int octm_init (struct octm_softc*) ;

__attribute__((used)) static int
octm_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct octm_softc *sc;
 struct ifreq *ifr;



 int error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;




 switch (cmd) {
 case 132:
  error = ether_ioctl(ifp, cmd, data);
  if (error != 0)
   return (error);
  return (0);

 case 130:
  if (ifp->if_flags == sc->sc_flags)
   return (0);
  if ((ifp->if_flags & IFF_UP) != 0) {
   octm_init(sc);
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    cvmx_mgmt_port_disable(sc->sc_port);

    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   }
  }
  sc->sc_flags = ifp->if_flags;
  return (0);

 case 131:





  ifp->if_capenable = ifr->ifr_reqcap;
  return (0);

 case 128:
  cvmx_mgmt_port_set_max_packet_size(sc->sc_port, ifr->ifr_mtu + ifp->if_hdrlen);
  return (0);

 case 129:
 case 133:
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_ifmedia, cmd);
  if (error != 0)
   return (error);
  return (0);

 default:
  error = ether_ioctl(ifp, cmd, data);
  if (error != 0)
   return (error);
  return (0);
 }
}
