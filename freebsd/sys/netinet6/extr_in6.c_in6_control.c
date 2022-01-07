
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int uint64_t ;
typedef int u_long ;
typedef int time_t ;
struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; scalar_t__ sin6_scope_id; int sin6_len; int sin6_addr; } ;
struct nd_prefixctl {int ndpr_plen; int ndpr_raf_onlink; int ndpr_raf_auto; int ndpr_pltime; int ndpr_vltime; struct sockaddr_in6 ndpr_prefix; struct ifnet* ndpr_ifp; } ;
struct nd_prefix {int ndpr_addrcnt; } ;
struct TYPE_18__ {int flags; } ;
struct in6_ndireq {TYPE_4__ ndi; } ;
struct in6_ndifreq32 {int ifindex; } ;
struct in6_ndifreq {int ifindex; } ;
struct in6_ifstat {int dummy; } ;
struct in6_addrlifetime {int ia6t_vltime; int ia6t_expire; int ia6t_pltime; int ia6t_preferred; } ;
struct TYPE_15__ {int ifru_flags6; struct in6_addrlifetime ifru_lifetime; int ifru_icmp6stat; int ifru_stat; } ;
struct in6_ifreq {TYPE_1__ ifr_ifru; struct sockaddr_in6 ifr_addr; struct sockaddr_in6 ifr_dstaddr; } ;
struct in6_ifextra {int icmp6_ifstat; int in6_ifstat; } ;
struct TYPE_19__ {int ifa_carp; } ;
struct in6_ifaddr {int ia6_flags; int ia6_updatetime; TYPE_5__ ia_ifa; struct nd_prefix* ia6_ndpr; struct in6_addrlifetime ia6_lifetime; struct sockaddr_in6 ia_prefixmask; struct sockaddr_in6 ia_dstaddr; struct sockaddr_in6 ia_addr; } ;
struct TYPE_17__ {int ia6t_pltime; int ia6t_vltime; } ;
struct TYPE_16__ {int sin6_addr; } ;
struct in6_aliasreq {int ifra_flags; TYPE_3__ ifra_lifetime; TYPE_2__ ifra_prefixmask; struct sockaddr_in6 ifra_addr; int ifra_vhid; } ;
struct ifnet {int if_flags; int (* if_ioctl ) (struct ifnet*,int,scalar_t__) ;int ** if_afdata; } ;
struct icmp6_ifstat {int dummy; } ;
typedef int pr0 ;
typedef int nd ;
typedef int maxexpire ;
typedef scalar_t__ caddr_t ;
struct TYPE_14__ {int flags; } ;


 scalar_t__ AF_INET6 ;
 int COUNTER_ARRAY_COPY (int ,int *,int) ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPFNOSUPPORT ;
 int EPROTONOSUPPORT ;
 int EVENTHANDLER_INVOKE (int ,struct ifnet*,TYPE_5__*,int ) ;
 int IFADDR_EVENT_DEL ;
 int IFF_POINTOPOINT ;
 int IN6_IFF_AUTOCONF ;
 int IN6_MASK_ADDR (int *,int *) ;
 int LOG_NOTICE ;
 int ND6_IFF_IFDISABLED ;
 int ND6_INFINITE_LIFETIME ;
 int ND6_WLOCK () ;
 int ND6_WUNLOCK () ;
 TYPE_12__* ND_IFINFO (struct ifnet*) ;
 int OSIOCAIFADDR_IN6 ;

 int PRIV_NETINET_ADDRCTRL6 ;
 int PRIV_NETINET_ND6 ;
 int PRIV_NETINET_SCOPE6 ;
 int PRIV_NET_ADDIFADDR ;
 int PRIV_NET_DELIFADDR ;
 int V_ip6_use_tempaddr ;
 int bzero (struct nd_prefixctl*,int) ;
 int carp_attach_p (TYPE_5__*,int ) ;
 int carp_detach_p (TYPE_5__*,int) ;
 int ifa_free (TYPE_5__*) ;
 int ifaddr_event_ext ;
 int in6_mask2len (int *,int *) ;
 int in6_purgeaddr (TYPE_5__*) ;
 int in6_setscope (int *,struct ifnet*,int *) ;
 int in6_src_ioctl (int,scalar_t__) ;
 int in6_tmpifadd (struct in6_ifaddr*,int,int ) ;
 int in6_update_ifa (struct ifnet*,struct in6_aliasreq*,struct in6_ifaddr*,int ) ;
 struct in6_ifaddr* in6ifa_ifpwithaddr (struct ifnet*,int *) ;
 int log (int ,char*,...) ;
 int memset (struct in6_ndireq*,int ,int) ;
 int mrt6_ioctl (int,scalar_t__) ;
 int nd6_ioctl (int const,scalar_t__,struct ifnet*) ;
 int nd6_prefix_del (struct nd_prefix*) ;
 struct nd_prefix* nd6_prefix_lookup (struct nd_prefixctl*) ;
 int nd6_prefix_rele (struct nd_prefix*) ;
 int nd6_prefix_unlink (struct nd_prefix*,int *) ;
 int nd6_prelist_add (struct nd_prefixctl*,int *,struct nd_prefix**) ;
 int pfxlist_onlink_check () ;
 int prison_check_ip6 (int ,int *) ;
 int priv_check (struct thread*,int ) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;
 int sa6_recoverscope (struct sockaddr_in6*) ;
 int scope6_ioctl (int,scalar_t__,struct ifnet*) ;
 int stub1 (TYPE_5__*,int) ;
 int stub2 (TYPE_5__*,int ) ;
 int stub3 (TYPE_5__*,int) ;
 int stub4 (struct ifnet*,int,scalar_t__) ;

int
in6_control(struct socket *so, u_long cmd, caddr_t data,
    struct ifnet *ifp, struct thread *td)
{
 struct in6_ifreq *ifr = (struct in6_ifreq *)data;
 struct in6_ifaddr *ia = ((void*)0);
 struct in6_aliasreq *ifra = (struct in6_aliasreq *)data;
 struct sockaddr_in6 *sa6;
 int carp_attached = 0;
 int error;
 u_long ocmd = cmd;




 if (cmd == OSIOCAIFADDR_IN6)
  cmd = 168;

 switch (cmd) {
 case 159:
 case 160:





  return (mrt6_ioctl ? mrt6_ioctl(cmd, data) : EOPNOTSUPP);
 }

 switch (cmd) {
 case 169:
 case 165:
  if (td != ((void*)0)) {
   error = priv_check(td, PRIV_NETINET_ADDRCTRL6);
   if (error)
    return (error);
  }
  return (in6_src_ioctl(cmd, data));
 }

 if (ifp == ((void*)0))
  return (EOPNOTSUPP);

 switch (cmd) {
 case 131:
 case 130:
 case 129:
 case 144:
 case 137:
 case 136:
  if (td != ((void*)0)) {
   error = priv_check(td, PRIV_NETINET_ND6);
   if (error)
    return (error);
  }

 case 170:
 case 154:
 case 147:
 case 161:
  return (nd6_ioctl(cmd, data, ifp));
 }

 switch (cmd) {
 case 132:
 case 163:
 case 167:
 case 166:
 case 143:
 case 151:
  log(LOG_NOTICE,
      "prefix ioctls are now invalidated. "
      "please use ifconfig.\n");
  return (EOPNOTSUPP);
 }

 switch (cmd) {
 case 128:
  if (td != ((void*)0)) {
   error = priv_check(td, PRIV_NETINET_SCOPE6);
   if (error)
    return (error);
  }

 case 146:
 case 145:
  return (scope6_ioctl(cmd, data, ifp));
 }
 switch (cmd) {
 case 168:
 case 133:
  sa6 = &ifra->ifra_addr;
  break;
 case 141:
 case 158:
 case 138:
 case 134:
 case 155:
 case 153:
 case 164:
 case 150:
 case 152:
 case 157:
 case 131:
 case 130:
 case 129:
 case 156:
 case 148:
 case 149:
  sa6 = &ifr->ifr_addr;
  break;
 case 142:
 case 140:
 case 139:
 case 135:







  return (EINVAL);
 default:
  sa6 = ((void*)0);
  break;
 }
 if (sa6 && sa6->sin6_family == AF_INET6) {
  if (sa6->sin6_scope_id != 0)
   error = sa6_embedscope(sa6, 0);
  else
   error = in6_setscope(&sa6->sin6_addr, ifp, ((void*)0));
  if (error != 0)
   return (error);
  if (td != ((void*)0) && (error = prison_check_ip6(td->td_ucred,
      &sa6->sin6_addr)) != 0)
   return (error);
  ia = in6ifa_ifpwithaddr(ifp, &sa6->sin6_addr);
 } else
  ia = ((void*)0);

 switch (cmd) {
 case 141:
 case 138:
 case 134:





  error = EINVAL;
  goto out;

 case 164:







  if (ia == ((void*)0)) {
   error = EADDRNOTAVAIL;
   goto out;
  }

 case 168:




  if (ifra->ifra_addr.sin6_family != AF_INET6 ||
      ifra->ifra_addr.sin6_len != sizeof(struct sockaddr_in6)) {
   error = EAFNOSUPPORT;
   goto out;
  }

  if (td != ((void*)0)) {
   error = priv_check(td, (cmd == 164) ?
       PRIV_NET_DELIFADDR : PRIV_NET_ADDIFADDR);
   if (error)
    goto out;
  }

 case 148:
 case 149:
  if (ifp->if_afdata[AF_INET6] == ((void*)0)) {
   error = EPFNOSUPPORT;
   goto out;
  }
  break;

 case 158:


 case 157:
 case 153:
 case 155:
 case 156:

  if (ia == ((void*)0)) {
   error = EADDRNOTAVAIL;
   goto out;
  }
  break;
 }

 switch (cmd) {
 case 158:
  ifr->ifr_addr = ia->ia_addr;
  if ((error = sa6_recoverscope(&ifr->ifr_addr)) != 0)
   goto out;
  break;

 case 155:
  if ((ifp->if_flags & IFF_POINTOPOINT) == 0) {
   error = EINVAL;
   goto out;
  }
  ifr->ifr_dstaddr = ia->ia_dstaddr;
  if ((error = sa6_recoverscope(&ifr->ifr_dstaddr)) != 0)
   goto out;
  break;

 case 153:
  ifr->ifr_addr = ia->ia_prefixmask;
  break;

 case 157:
  ifr->ifr_ifru.ifru_flags6 = ia->ia6_flags;
  break;

 case 148:
  COUNTER_ARRAY_COPY(((struct in6_ifextra *)
      ifp->if_afdata[AF_INET6])->in6_ifstat,
      &ifr->ifr_ifru.ifru_stat,
      sizeof(struct in6_ifstat) / sizeof(uint64_t));
  break;

 case 149:
  COUNTER_ARRAY_COPY(((struct in6_ifextra *)
      ifp->if_afdata[AF_INET6])->icmp6_ifstat,
      &ifr->ifr_ifru.ifru_icmp6stat,
      sizeof(struct icmp6_ifstat) / sizeof(uint64_t));
  break;

 case 156:
  ifr->ifr_ifru.ifru_lifetime = ia->ia6_lifetime;
  if (ia->ia6_lifetime.ia6t_vltime != ND6_INFINITE_LIFETIME) {
   time_t maxexpire;
   struct in6_addrlifetime *retlt =
       &ifr->ifr_ifru.ifru_lifetime;





   maxexpire = (-1) &
       ~((time_t)1 << ((sizeof(maxexpire) * 8) - 1));
   if (ia->ia6_lifetime.ia6t_vltime <
       maxexpire - ia->ia6_updatetime) {
    retlt->ia6t_expire = ia->ia6_updatetime +
        ia->ia6_lifetime.ia6t_vltime;
   } else
    retlt->ia6t_expire = maxexpire;
  }
  if (ia->ia6_lifetime.ia6t_pltime != ND6_INFINITE_LIFETIME) {
   time_t maxexpire;
   struct in6_addrlifetime *retlt =
       &ifr->ifr_ifru.ifru_lifetime;





   maxexpire = (-1) &
       ~((time_t)1 << ((sizeof(maxexpire) * 8) - 1));
   if (ia->ia6_lifetime.ia6t_pltime <
       maxexpire - ia->ia6_updatetime) {
    retlt->ia6t_preferred = ia->ia6_updatetime +
        ia->ia6_lifetime.ia6t_pltime;
   } else
    retlt->ia6t_preferred = maxexpire;
  }
  break;

 case 168:
 {
  struct nd_prefixctl pr0;
  struct nd_prefix *pr;





  if ((error = in6_update_ifa(ifp, ifra, ia, 0)) != 0)
   goto out;
  if (ia != ((void*)0)) {
   if (ia->ia_ifa.ifa_carp)
    (*carp_detach_p)(&ia->ia_ifa, 1);
   ifa_free(&ia->ia_ifa);
  }
  if ((ia = in6ifa_ifpwithaddr(ifp, &ifra->ifra_addr.sin6_addr))
      == ((void*)0)) {




   break;
  }

  if (cmd == ocmd && ifra->ifra_vhid > 0) {
   if (carp_attach_p != ((void*)0))
    error = (*carp_attach_p)(&ia->ia_ifa,
        ifra->ifra_vhid);
   else
    error = EPROTONOSUPPORT;
   if (error)
    goto out;
   else
    carp_attached = 1;
  }
  bzero(&pr0, sizeof(pr0));
  pr0.ndpr_ifp = ifp;
  pr0.ndpr_plen = in6_mask2len(&ifra->ifra_prefixmask.sin6_addr,
      ((void*)0));
  if (pr0.ndpr_plen == 128) {

   goto aifaddr_out;
  }
  pr0.ndpr_prefix = ifra->ifra_addr;

  IN6_MASK_ADDR(&pr0.ndpr_prefix.sin6_addr,
      &ifra->ifra_prefixmask.sin6_addr);
  pr0.ndpr_raf_onlink = 1;
  pr0.ndpr_raf_auto =
      ((ifra->ifra_flags & IN6_IFF_AUTOCONF) != 0);
  pr0.ndpr_vltime = ifra->ifra_lifetime.ia6t_vltime;
  pr0.ndpr_pltime = ifra->ifra_lifetime.ia6t_pltime;


  if ((pr = nd6_prefix_lookup(&pr0)) == ((void*)0)) {




   if ((error = nd6_prelist_add(&pr0, ((void*)0), &pr)) != 0) {
    if (carp_attached)
     (*carp_detach_p)(&ia->ia_ifa, 0);
    goto out;
   }
  }


  if (ia->ia6_ndpr == ((void*)0)) {
   ia->ia6_ndpr = pr;
   pr->ndpr_addrcnt++;






   if ((ia->ia6_flags & IN6_IFF_AUTOCONF) &&
       V_ip6_use_tempaddr && pr->ndpr_addrcnt == 1) {
    int e;
    if ((e = in6_tmpifadd(ia, 1, 0)) != 0) {
     log(LOG_NOTICE, "in6_control: failed "
         "to create a temporary address, "
         "errno=%d\n", e);
    }
   }
  }
  nd6_prefix_rele(pr);





  pfxlist_onlink_check();

aifaddr_out:




  if (ND_IFINFO(ifp)->flags & ND6_IFF_IFDISABLED) {
   struct in6_ndireq nd;

   memset(&nd, 0, sizeof(nd));
   nd.ndi.flags = ND_IFINFO(ifp)->flags;
   nd.ndi.flags &= ~ND6_IFF_IFDISABLED;
   if (nd6_ioctl(137, (caddr_t)&nd, ifp) < 0)
    log(LOG_NOTICE, "SIOCAIFADDR_IN6: "
        "SIOCSIFINFO_FLAGS for -ifdisabled "
        "failed.");




  }
  break;
 }

 case 164:
 {
  struct nd_prefix *pr;
  pr = ia->ia6_ndpr;
  in6_purgeaddr(&ia->ia_ifa);
  if (pr != ((void*)0) && pr->ndpr_addrcnt == 0) {
   ND6_WLOCK();
   nd6_prefix_unlink(pr, ((void*)0));
   ND6_WUNLOCK();
   nd6_prefix_del(pr);
  }
  EVENTHANDLER_INVOKE(ifaddr_event_ext, ifp, &ia->ia_ifa,
      IFADDR_EVENT_DEL);
  break;
 }

 default:
  if (ifp->if_ioctl == ((void*)0)) {
   error = EOPNOTSUPP;
   goto out;
  }
  error = (*ifp->if_ioctl)(ifp, cmd, data);
  goto out;
 }

 error = 0;
out:
 if (ia != ((void*)0))
  ifa_free(&ia->ia_ifa);
 return (error);
}
