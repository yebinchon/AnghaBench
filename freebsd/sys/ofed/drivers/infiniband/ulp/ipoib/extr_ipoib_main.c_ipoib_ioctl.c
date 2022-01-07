
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct ipoib_dev_priv {scalar_t__ gone; int restart_task; } ;
struct TYPE_4__ {int * sa_data; } ;
struct ifreq {int ifr_mtu; TYPE_2__ ifr_addr; } ;
struct ifnet {int if_flags; int if_drv_flags; struct ipoib_dev_priv* if_softc; int (* if_init ) (struct ipoib_dev_priv*) ;} ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {int sa_family; } ;



 int EINVAL ;
 int ENXIO ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int IF_LLADDR (struct ifnet*) ;
 int INFINIBAND_ALEN ;






 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int bcopy (int ,int *,int ) ;
 int ipoib_change_mtu (struct ipoib_dev_priv*,int ,int) ;
 int ipoib_open (struct ipoib_dev_priv*) ;
 int ipoib_stop (struct ipoib_dev_priv*) ;
 int ipoib_workqueue ;
 int queue_work (int ,int *) ;
 int stub1 (struct ipoib_dev_priv*) ;
 int stub2 (struct ipoib_dev_priv*) ;

__attribute__((used)) static int
ipoib_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ipoib_dev_priv *priv = ifp->if_softc;
 struct ifaddr *ifa = (struct ifaddr *) data;
 struct ifreq *ifr = (struct ifreq *) data;
 int error = 0;


 if (priv == ((void*)0) || priv->gone != 0)
  return (ENXIO);

 switch (command) {
 case 129:
  if (ifp->if_flags & IFF_UP) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
    error = -ipoib_open(priv);
  } else
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    ipoib_stop(priv);
  break;
 case 133:
 case 132:
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   queue_work(ipoib_workqueue, &priv->restart_task);
  break;
 case 130:
  ifp->if_flags |= IFF_UP;

  switch (ifa->ifa_addr->sa_family) {






  default:
   ifp->if_init(ifp->if_softc);
   break;
  }
  break;

 case 131:
   bcopy(IF_LLADDR(ifp), &ifr->ifr_addr.sa_data[0],
                            INFINIBAND_ALEN);
  break;

 case 128:



  error = -ipoib_change_mtu(priv, ifr->ifr_mtu, 0);
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
