
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ena_adapter {int ioctl_sx; int media; int pdev; } ;
typedef TYPE_1__* if_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_7__ {int if_flags; int if_capenable; int if_mtu; struct ena_adapter* if_softc; } ;


 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;







 int device_printf (int ,char*) ;
 int ena_change_mtu (TYPE_1__*,int ) ;
 int ena_down (struct ena_adapter*) ;
 int ena_up (struct ena_adapter*) ;
 int ether_ioctl (TYPE_1__*,int,scalar_t__) ;
 int if_getdrvflags (TYPE_1__*) ;
 int ifmedia_ioctl (TYPE_1__*,struct ifreq*,int *,int) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static int
ena_ioctl(if_t ifp, u_long command, caddr_t data)
{
 struct ena_adapter *adapter;
 struct ifreq *ifr;
 int rc;

 adapter = ifp->if_softc;
 ifr = (struct ifreq *)data;




 rc = 0;
 switch (command) {
 case 128:
  if (ifp->if_mtu == ifr->ifr_mtu)
   break;
  sx_xlock(&adapter->ioctl_sx);
  ena_down(adapter);

  ena_change_mtu(ifp, ifr->ifr_mtu);

  rc = ena_up(adapter);
  sx_unlock(&adapter->ioctl_sx);
  break;

 case 130:
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
    if ((ifp->if_flags & (IFF_PROMISC |
        IFF_ALLMULTI)) != 0) {
     device_printf(adapter->pdev,
         "ioctl promisc/allmulti\n");
    }
   } else {
    sx_xlock(&adapter->ioctl_sx);
    rc = ena_up(adapter);
    sx_unlock(&adapter->ioctl_sx);
   }
  } else {
   if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
    sx_xlock(&adapter->ioctl_sx);
    ena_down(adapter);
    sx_unlock(&adapter->ioctl_sx);
   }
  }
  break;

 case 134:
 case 133:
  break;

 case 129:
 case 132:
  rc = ifmedia_ioctl(ifp, ifr, &adapter->media, command);
  break;

 case 131:
  {
   int reinit = 0;

   if (ifr->ifr_reqcap != ifp->if_capenable) {
    ifp->if_capenable = ifr->ifr_reqcap;
    reinit = 1;
   }

   if ((reinit != 0) &&
       ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0)) {
    sx_xlock(&adapter->ioctl_sx);
    ena_down(adapter);
    rc = ena_up(adapter);
    sx_unlock(&adapter->ioctl_sx);
   }
  }

  break;
 default:
  rc = ether_ioctl(ifp, command, data);
  break;
 }

 return (rc);
}
