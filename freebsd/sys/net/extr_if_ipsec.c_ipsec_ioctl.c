
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint32_t ;
typedef int u_long ;
struct sockaddr_in6 {int sin_family; int sin_len; int sin6_family; int sin6_len; int sin6_addr; int sin_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin6_family; int sin6_len; int sin6_addr; int sin_addr; } ;
struct sockaddr {int const sa_family; int sa_len; } ;
struct TYPE_22__ {int sin6_addr; } ;
struct TYPE_19__ {int sin_addr; } ;
struct TYPE_23__ {TYPE_7__ sin6; TYPE_4__ sin; } ;
struct TYPE_20__ {int sin6_addr; } ;
struct TYPE_18__ {int sin_addr; } ;
struct TYPE_17__ {int const sa_family; } ;
struct TYPE_21__ {TYPE_5__ sin6; TYPE_3__ sin; TYPE_2__ sa; } ;
struct secasindex {TYPE_8__ dst; TYPE_6__ src; } ;
struct ipsec_softc {int reqid; int fibnum; int family; } ;
struct in_aliasreq {int ifra_dstaddr; int ifra_addr; } ;
struct in6_ifreq {int ifr_addr; } ;
struct in6_aliasreq {int ifra_dstaddr; int ifra_addr; } ;
struct ifreq {int ifr_fib; int ifr_addr; int ifr_mtu; } ;
struct ifnet {struct ipsec_softc* if_softc; int if_mtu; int if_flags; } ;
typedef int reqid ;
typedef scalar_t__ caddr_t ;
struct TYPE_24__ {int sin6_addr; } ;
struct TYPE_16__ {int s_addr; } ;
struct TYPE_15__ {int td_ucred; } ;
struct TYPE_14__ {TYPE_1__ sin_addr; } ;




 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENXIO ;
 int IFF_UP ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;


 int IPSEC_DIR_OUTBOUND ;
 int IPSEC_MTU_MAX ;
 int IPSEC_MTU_MIN ;
 int PRIV_NET_SETIFCAP ;
 int PRIV_NET_SETIFFIB ;
 int copyin (int ,int *,int) ;
 int copyout (int *,int ,int) ;
 TYPE_12__* curthread ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int ipsec_delete_tunnel (struct ipsec_softc*) ;
 struct secasindex* ipsec_getsaidx (struct ipsec_softc*,int ,int ) ;
 int ipsec_ioctl_sx ;
 int ipsec_set_addresses (struct ifnet*,struct sockaddr*,struct sockaddr*) ;
 int ipsec_set_reqid (struct ipsec_softc*,int ) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int prison_if (int ,struct sockaddr*) ;
 int priv_check (TYPE_12__*,int ) ;
 int rt_numfibs ;
 int sa6_embedscope (TYPE_9__*,int ) ;
 int sa6_recoverscope (struct sockaddr_in6*) ;
 TYPE_10__* satosin (struct sockaddr*) ;
 TYPE_9__* satosin6 (struct sockaddr*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
ipsec_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq*)data;
 struct sockaddr *dst, *src;
 struct ipsec_softc *sc;
 struct secasindex *saidx;






 uint32_t reqid;
 int error;

 switch (cmd) {
 case 133:
  ifp->if_flags |= IFF_UP;
 case 142:
 case 141:
 case 139:
 case 132:
  return (0);
 case 131:
  if (ifr->ifr_mtu < IPSEC_MTU_MIN ||
      ifr->ifr_mtu > IPSEC_MTU_MAX)
   return (EINVAL);
  else
   ifp->if_mtu = ifr->ifr_mtu;
  return (0);
 }
 sx_xlock(&ipsec_ioctl_sx);
 sc = ifp->if_softc;

 if (sc == ((void*)0)) {
  error = ENXIO;
  goto bad;
 }
 error = 0;
 switch (cmd) {
 case 130:



  error = EINVAL;
  switch (cmd) {
  default:
   goto bad;
  }

  if (src->sa_family != dst->sa_family ||
      src->sa_len != dst->sa_len)
   goto bad;


  switch (src->sa_family) {
  default:
   error = EAFNOSUPPORT;
   goto bad;
  }

  error = EAFNOSUPPORT;
  switch (cmd) {
  }
  error = EADDRNOTAVAIL;
  switch (src->sa_family) {
  };
  error = ipsec_set_addresses(ifp, src, dst);
  break;
 case 140:
  ipsec_delete_tunnel(sc);
  break;
 case 136:
 case 138:




  if (sc->family == 0) {
   error = EADDRNOTAVAIL;
   break;
  }
  saidx = ipsec_getsaidx(sc, IPSEC_DIR_OUTBOUND, sc->family);
  switch (cmd) {
  default:
   error = EAFNOSUPPORT;
  }
  if (error == 0) {
   switch (cmd) {
   }
  }
  if (error != 0)
   break;
  switch (cmd) {
  }
  break;
 case 134:
  ifr->ifr_fib = sc->fibnum;
  break;
 case 128:
  if ((error = priv_check(curthread, PRIV_NET_SETIFFIB)) != 0)
   break;
  if (ifr->ifr_fib >= rt_numfibs)
   error = EINVAL;
  else
   sc->fibnum = ifr->ifr_fib;
  break;
 case 144:
  reqid = sc->reqid;
  error = copyout(&reqid, ifr_data_get_ptr(ifr), sizeof(reqid));
  break;
 case 143:
  if ((error = priv_check(curthread, PRIV_NET_SETIFCAP)) != 0)
   break;
  error = copyin(ifr_data_get_ptr(ifr), &reqid, sizeof(reqid));
  if (error != 0)
   break;
  error = ipsec_set_reqid(sc, reqid);
  break;
 default:
  error = EINVAL;
  break;
 }
bad:
 sx_xunlock(&ipsec_ioctl_sx);
 return (error);
}
