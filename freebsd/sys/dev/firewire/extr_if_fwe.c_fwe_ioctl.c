
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifstat {int ascii; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; scalar_t__ if_softc; } ;
struct TYPE_2__ {struct firewire_comm* fc; } ;
struct fwe_softc {int stream_ch; int dma_ch; TYPE_1__ fd; int eth_softc; } ;
struct fwe_eth_softc {struct fwe_softc* fwe; } ;
struct firewire_comm {int (* set_intr ) (struct firewire_comm*,int) ;} ;
typedef scalar_t__ caddr_t ;


 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;





 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int fwe_init (int *) ;
 int fwe_poll ;
 int fwe_stop (struct fwe_softc*) ;
 int snprintf (int ,int,char*,int,int) ;
 int splimp () ;
 int splx (int) ;
 int stub1 (struct firewire_comm*,int) ;
 int stub2 (struct firewire_comm*,int) ;

__attribute__((used)) static int
fwe_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct fwe_softc *fwe = ((struct fwe_eth_softc *)ifp->if_softc)->fwe;
 struct ifstat *ifs = ((void*)0);
 int s, error;

 switch (cmd) {
  case 128:
   s = splimp();
   if (ifp->if_flags & IFF_UP) {
    if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
     fwe_init(&fwe->eth_softc);
   } else {
    if (ifp->if_drv_flags & IFF_DRV_RUNNING)
     fwe_stop(fwe);
   }

   ifp->if_flags |= IFF_PROMISC;
   splx(s);
   break;
  case 132:
  case 131:
   break;

  case 130:
   s = splimp();
   ifs = (struct ifstat *)data;
   snprintf(ifs->ascii, sizeof(ifs->ascii),
       "\tch %d dma %d\n", fwe->stream_ch, fwe->dma_ch);
   splx(s);
   break;
  case 129:
   break;
  default:
   s = splimp();
   error = ether_ioctl(ifp, cmd, data);
   splx(s);
   return (error);
 }

 return (0);
}
