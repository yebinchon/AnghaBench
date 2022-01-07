
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct netfront_info {int xn_if_flags; int xn_reset; int sc_media; int xbdev; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; int if_mtu; struct netfront_info* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int sa_family; } ;


 int AF_INET ;
 int CSUM_TSO ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int XN_CSUM_FEATURES ;
 int XN_LOCK (struct netfront_info*) ;
 int XN_UNLOCK (struct netfront_info*) ;
 int XST_NIL ;
 int XenbusStateClosing ;
 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int device_printf (int ,char*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int hz ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int netfront_carrier_off (struct netfront_info*) ;
 int tsleep (struct netfront_info*,int ,char*,int) ;
 int xenbus_get_node (int ) ;
 int xenbus_set_state (int ,int ) ;
 int xn_ifinit (struct netfront_info*) ;
 int xn_ifinit_locked (struct netfront_info*) ;
 int xn_stop (struct netfront_info*) ;
 int xs_rm (int ,int ,char*) ;

__attribute__((used)) static int
xn_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct netfront_info *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 device_t dev;



 int mask, error = 0, reinit;

 dev = sc->xbdev;

 switch(cmd) {
 case 132:
   error = ether_ioctl(ifp, cmd, data);



  break;
 case 128:
  if (ifp->if_mtu == ifr->ifr_mtu)
   break;

  ifp->if_mtu = ifr->ifr_mtu;
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  xn_ifinit(sc);
  break;
 case 130:
  XN_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   xn_ifinit_locked(sc);
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    xn_stop(sc);
   }
  }
  sc->xn_if_flags = ifp->if_flags;
  XN_UNLOCK(sc);
  break;
 case 131:
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  reinit = 0;

  if (mask & IFCAP_TXCSUM) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   ifp->if_hwassist ^= XN_CSUM_FEATURES;
  }
  if (mask & IFCAP_TSO4) {
   ifp->if_capenable ^= IFCAP_TSO4;
   ifp->if_hwassist ^= CSUM_TSO;
  }

  if (mask & (IFCAP_RXCSUM | IFCAP_LRO)) {

   reinit = 1;

   if (mask & IFCAP_RXCSUM)
    ifp->if_capenable ^= IFCAP_RXCSUM;
   if (mask & IFCAP_LRO)
    ifp->if_capenable ^= IFCAP_LRO;
  }

  if (reinit == 0)
   break;





  device_printf(sc->xbdev,
      "performing interface reset due to feature change\n");
  XN_LOCK(sc);
  netfront_carrier_off(sc);
  sc->xn_reset = 1;




  XN_UNLOCK(sc);
  xs_rm(XST_NIL, xenbus_get_node(dev), "feature-gso-tcpv4");
  xs_rm(XST_NIL, xenbus_get_node(dev), "feature-no-csum-offload");
  xenbus_set_state(dev, XenbusStateClosing);






  error = tsleep(sc, 0, "xn_rst", 30*hz);
  break;
 case 135:
 case 134:
  break;
 case 129:
 case 133:
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_media, cmd);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
 }

 return (error);
}
