
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;
struct me_softc {int me_fibnum; TYPE_1__ me_dst; TYPE_1__ me_src; } ;
struct in_aliasreq {struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_addr; } ;
struct ifreq {int ifr_mtu; int ifr_fib; int ifr_addr; } ;
struct ifnet {int if_mtu; struct me_softc* if_softc; int if_flags; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int td_ucred; } ;


 int AF_INET ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENXIO ;
 int IFF_UP ;
 int INADDR_ANY ;
 int ME_READY (struct me_softc*) ;
 int PRIV_NET_GRE ;
 TYPE_2__* curthread ;
 int me_delete_tunnel (struct me_softc*) ;
 int me_ioctl_sx ;
 int me_set_tunnel (struct me_softc*,int ,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int prison_if (int ,int ) ;
 int priv_check (TYPE_2__*,int ) ;
 int rt_numfibs ;
 int sintosa (struct sockaddr_in*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
me_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 struct sockaddr_in *src, *dst;
 struct me_softc *sc;
 int error;

 switch (cmd) {
 case 130:
  if (ifr->ifr_mtu < 576)
   return (EINVAL);
  ifp->if_mtu = ifr->ifr_mtu;
  return (0);
 case 132:
  ifp->if_flags |= IFF_UP;
 case 131:
 case 138:
 case 137:
  return (0);
 }
 sx_xlock(&me_ioctl_sx);
 sc = ifp->if_softc;
 if (sc == ((void*)0)) {
  error = ENXIO;
  goto end;
 }
 error = 0;
 switch (cmd) {
 case 129:
  src = &((struct in_aliasreq *)data)->ifra_addr;
  dst = &((struct in_aliasreq *)data)->ifra_dstaddr;
  if (src->sin_family != dst->sin_family ||
      src->sin_family != AF_INET ||
      src->sin_len != dst->sin_len ||
      src->sin_len != sizeof(struct sockaddr_in)) {
   error = EINVAL;
   break;
  }
  if (src->sin_addr.s_addr == INADDR_ANY ||
      dst->sin_addr.s_addr == INADDR_ANY) {
   error = EADDRNOTAVAIL;
   break;
  }
  error = me_set_tunnel(sc, src->sin_addr.s_addr,
      dst->sin_addr.s_addr);
  break;
 case 136:
  me_delete_tunnel(sc);
  break;
 case 134:
 case 135:
  if (!ME_READY(sc)) {
   error = EADDRNOTAVAIL;
   break;
  }
  src = (struct sockaddr_in *)&ifr->ifr_addr;
  memset(src, 0, sizeof(*src));
  src->sin_family = AF_INET;
  src->sin_len = sizeof(*src);
  switch (cmd) {
  case 134:
   src->sin_addr = sc->me_src;
   break;
  case 135:
   src->sin_addr = sc->me_dst;
   break;
  }
  error = prison_if(curthread->td_ucred, sintosa(src));
  if (error != 0)
   memset(src, 0, sizeof(*src));
  break;
 case 133:
  ifr->ifr_fib = sc->me_fibnum;
  break;
 case 128:
  if ((error = priv_check(curthread, PRIV_NET_GRE)) != 0)
   break;
  if (ifr->ifr_fib >= rt_numfibs)
   error = EINVAL;
  else
   sc->me_fibnum = ifr->ifr_fib;
  break;
 default:
  error = EINVAL;
  break;
 }
end:
 sx_xunlock(&me_ioctl_sx);
 return (error);
}
