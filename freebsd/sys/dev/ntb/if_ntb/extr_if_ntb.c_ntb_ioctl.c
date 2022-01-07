
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ntb_net_ctx {int media; scalar_t__ mtu; } ;
struct ifreq {int ifr_reqcap; scalar_t__ ifr_mtu; } ;
typedef int if_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 scalar_t__ ETHER_HDR_LEN ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int NTB_CSUM_FEATURES ;
 int NTB_CSUM_FEATURES6 ;







 int ether_ioctl (int ,int,scalar_t__) ;
 struct ntb_net_ctx* if_getsoftc (int ) ;
 int if_setcapenablebit (int ,int,int) ;
 int if_sethwassistbits (int ,int ,int ) ;
 int if_setmtu (int ,scalar_t__) ;
 int ifmedia_ioctl (int ,struct ifreq*,int *,int) ;

__attribute__((used)) static int
ntb_ioctl(if_t ifp, u_long command, caddr_t data)
{
 struct ntb_net_ctx *sc = if_getsoftc(ifp);
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0;

 switch (command) {
 case 130:
 case 134:
 case 133:
  break;

 case 128:
     {
  if (ifr->ifr_mtu > sc->mtu - ETHER_HDR_LEN) {
   error = EINVAL;
   break;
  }

  if_setmtu(ifp, ifr->ifr_mtu);
  break;
     }

 case 129:
 case 132:
  error = ifmedia_ioctl(ifp, ifr, &sc->media, command);
  break;

 case 131:
  if (ifr->ifr_reqcap & IFCAP_RXCSUM)
   if_setcapenablebit(ifp, IFCAP_RXCSUM, 0);
  else
   if_setcapenablebit(ifp, 0, IFCAP_RXCSUM);
  if (ifr->ifr_reqcap & IFCAP_TXCSUM) {
   if_setcapenablebit(ifp, IFCAP_TXCSUM, 0);
   if_sethwassistbits(ifp, NTB_CSUM_FEATURES, 0);
  } else {
   if_setcapenablebit(ifp, 0, IFCAP_TXCSUM);
   if_sethwassistbits(ifp, 0, NTB_CSUM_FEATURES);
  }
  if (ifr->ifr_reqcap & IFCAP_RXCSUM_IPV6)
   if_setcapenablebit(ifp, IFCAP_RXCSUM_IPV6, 0);
  else
   if_setcapenablebit(ifp, 0, IFCAP_RXCSUM_IPV6);
  if (ifr->ifr_reqcap & IFCAP_TXCSUM_IPV6) {
   if_setcapenablebit(ifp, IFCAP_TXCSUM_IPV6, 0);
   if_sethwassistbits(ifp, NTB_CSUM_FEATURES6, 0);
  } else {
   if_setcapenablebit(ifp, 0, IFCAP_TXCSUM_IPV6);
   if_sethwassistbits(ifp, 0, NTB_CSUM_FEATURES6);
  }
  break;

 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
