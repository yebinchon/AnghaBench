
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct usb_ether {int dummy; } ;
struct smsc_softc {int dummy; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_capenable; int if_capabilities; int if_drv_flags; int (* if_init ) (struct usb_ether*) ;struct usb_ether* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int IFCAP_RXCSUM ;
 int IFF_DRV_RUNNING ;
 scalar_t__ SIOCSIFCAP ;
 int SMSC_LOCK (struct smsc_softc*) ;
 int SMSC_UNLOCK (struct smsc_softc*) ;
 int stub1 (struct usb_ether*) ;
 struct smsc_softc* uether_getsc (struct usb_ether*) ;
 int uether_init (struct usb_ether*) ;
 int uether_ioctl (struct ifnet*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
smsc_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct usb_ether *ue = ifp->if_softc;
 struct smsc_softc *sc;
 struct ifreq *ifr;
 int rc;
 int mask;
 int reinit;

 if (cmd == SIOCSIFCAP) {

  sc = uether_getsc(ue);
  ifr = (struct ifreq *)data;

  SMSC_LOCK(sc);

  rc = 0;
  reinit = 0;

  mask = ifr->ifr_reqcap ^ ifp->if_capenable;


  if ((mask & IFCAP_RXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_RXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_RXCSUM;

   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    reinit = 1;
   }
  }

  SMSC_UNLOCK(sc);
  if (reinit)



   ifp->if_init(ue);


 } else {
  rc = uether_ioctl(ifp, cmd, data);
 }

 return (rc);
}
