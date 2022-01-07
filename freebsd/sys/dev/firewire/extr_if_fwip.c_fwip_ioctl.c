
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; scalar_t__ if_softc; } ;
struct TYPE_2__ {struct firewire_comm* fc; } ;
struct fwip_softc {TYPE_1__ fd; int fw_softc; } ;
struct fwip_eth_softc {struct fwip_softc* fwip; } ;
struct firewire_comm {int (* set_intr ) (struct firewire_comm*,int) ;} ;
typedef scalar_t__ caddr_t ;


 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;




 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int firewire_ioctl (struct ifnet*,int,scalar_t__) ;
 int fwip_init (int *) ;
 int fwip_poll ;
 int fwip_stop (struct fwip_softc*) ;
 int splimp () ;
 int splx (int) ;
 int stub1 (struct firewire_comm*,int) ;
 int stub2 (struct firewire_comm*,int) ;

__attribute__((used)) static int
fwip_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct fwip_softc *fwip = ((struct fwip_eth_softc *)ifp->if_softc)->fwip;
 int s, error;

 switch (cmd) {
 case 128:
  s = splimp();
  if (ifp->if_flags & IFF_UP) {
   if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
    fwip_init(&fwip->fw_softc);
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    fwip_stop(fwip);
  }
  splx(s);
  break;
 case 131:
 case 130:
  break;
 case 129:
  break;
 default:
  s = splimp();
  error = firewire_ioctl(ifp, cmd, data);
  splx(s);
  return (error);
 }

 return (0);
}
