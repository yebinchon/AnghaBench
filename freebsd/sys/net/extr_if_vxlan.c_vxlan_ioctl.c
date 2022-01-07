
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vxlan_softc {int vxl_media; } ;
struct ifreq {int ifr_mtu; } ;
struct ifnet {int if_mtu; struct vxlan_softc* if_softc; } ;
struct ifdrv {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ETHERMIN ;
 int VXLAN_MAX_MTU ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int vxlan_ioctl_drvspec (struct vxlan_softc*,struct ifdrv*,int) ;
 int vxlan_ioctl_ifflags (struct vxlan_softc*) ;

__attribute__((used)) static int
vxlan_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct vxlan_softc *sc;
 struct ifreq *ifr;
 struct ifdrv *ifd;
 int error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *) data;
 ifd = (struct ifdrv *) data;

 error = 0;

 switch (cmd) {
 case 135:
 case 134:
  break;

 case 133:
 case 131:
  error = vxlan_ioctl_drvspec(sc, ifd, cmd == 133);
  break;

 case 130:
  error = vxlan_ioctl_ifflags(sc);
  break;

 case 129:
 case 132:
  error = ifmedia_ioctl(ifp, ifr, &sc->vxl_media, cmd);
  break;

 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > VXLAN_MAX_MTU)
   error = EINVAL;
  else
   ifp->if_mtu = ifr->ifr_mtu;
  break;

 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
