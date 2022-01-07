
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {struct ifnet* dev; } ;
struct ifreq {int ifr_mtu; int ifr_name; } ;
struct ifnet {int if_mtu; int if_vnet; } ;
typedef int caddr_t ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IFNAMSIZ ;
 int SIOCSIFMTU ;
 int curthread ;
 int if_name (struct ifnet*) ;
 int ifhwioctl (int ,struct ifnet*,int ,int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int
ipoib_propagate_ifnet_mtu(struct ipoib_dev_priv *priv, int new_mtu,
    bool propagate)
{
 struct ifnet *ifp;
 struct ifreq ifr;
 int error;

 ifp = priv->dev;
 if (ifp->if_mtu == new_mtu)
  return (0);
 if (propagate) {
  strlcpy(ifr.ifr_name, if_name(ifp), IFNAMSIZ);
  ifr.ifr_mtu = new_mtu;
  CURVNET_SET(ifp->if_vnet);
  error = ifhwioctl(SIOCSIFMTU, ifp, (caddr_t)&ifr, curthread);
  CURVNET_RESTORE();
 } else {
  ifp->if_mtu = new_mtu;
  error = 0;
 }
 return (error);
}
