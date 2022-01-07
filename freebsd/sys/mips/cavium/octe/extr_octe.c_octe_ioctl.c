
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_mtu; int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; TYPE_2__* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct TYPE_6__ {int if_flags; int media; int * miibus; } ;
typedef TYPE_2__ cvm_oct_private_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int sa_family; } ;


 int AF_INET ;
 int EINVAL ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;






 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int cvm_oct_common_change_mtu (struct ifnet*,int ) ;
 struct mii_data* device_get_softc (int *) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int octe_init (TYPE_2__*) ;
 int octe_stop (TYPE_2__*) ;

__attribute__((used)) static int
octe_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 cvm_oct_private_t *priv;
 struct mii_data *mii;
 struct ifreq *ifr;



 int error;

 priv = ifp->if_softc;
 ifr = (struct ifreq *)data;




 switch (cmd) {
 case 132:
  error = ether_ioctl(ifp, cmd, data);
  if (error != 0)
   return (error);
  return (0);

 case 130:
  if (ifp->if_flags == priv->if_flags)
   return (0);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
    octe_init(priv);
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    octe_stop(priv);
  }
  priv->if_flags = ifp->if_flags;
  return (0);

 case 131:





  ifp->if_capenable = ifr->ifr_reqcap;
  return (0);

 case 128:
  error = cvm_oct_common_change_mtu(ifp, ifr->ifr_mtu);
  if (error != 0)
   return (EINVAL);
  return (0);

 case 129:
 case 133:
  if (priv->miibus != ((void*)0)) {
   mii = device_get_softc(priv->miibus);
   error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
   if (error != 0)
    return (error);
   return (0);
  }
  error = ifmedia_ioctl(ifp, ifr, &priv->media, cmd);
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
