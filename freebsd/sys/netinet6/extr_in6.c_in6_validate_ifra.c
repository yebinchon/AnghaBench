
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int u_char ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; scalar_t__ sin6_scope_id; struct in6_addr sin6_addr; } ;
struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_7__ {scalar_t__ sin6_len; int sin6_addr; } ;
struct in6_ifaddr {TYPE_4__ ia_addr; TYPE_3__ ia_prefixmask; } ;
struct TYPE_6__ {int sin6_len; int sin6_addr; } ;
struct TYPE_5__ {int sin6_len; scalar_t__ sin6_family; int sin6_addr; } ;
struct in6_addrlifetime {scalar_t__ ia6t_pltime; scalar_t__ ia6t_vltime; } ;
struct in6_aliasreq {TYPE_2__ ifra_prefixmask; TYPE_1__ ifra_addr; struct in6_addrlifetime ifra_lifetime; struct sockaddr_in6 ifra_dstaddr; } ;
struct ifnet {int if_flags; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int IFF_LOOPBACK ;
 int IFF_POINTOPOINT ;
 int INET6_ADDRSTRLEN ;
 int LOG_INFO ;
 int in6_mask2len (int *,int *) ;
 scalar_t__ in6_setscope (struct in6_addr*,struct ifnet*,scalar_t__*) ;
 int ip6_sprintf (char*,int *) ;
 int nd6log (int ) ;
 scalar_t__ sa6_embedscope (struct sockaddr_in6*,int ) ;

__attribute__((used)) static int
in6_validate_ifra(struct ifnet *ifp, struct in6_aliasreq *ifra,
    struct in6_ifaddr *ia, int flags)
{
 int plen = -1;
 struct sockaddr_in6 dst6;
 struct in6_addrlifetime *lt;
 char ip6buf[INET6_ADDRSTRLEN];


 if (ifp == ((void*)0) || ifra == ((void*)0))
  return (EINVAL);





 if ((ifp->if_flags & IFF_POINTOPOINT) != 0 &&
     ifra->ifra_dstaddr.sin6_family != AF_INET6 &&
     ifra->ifra_dstaddr.sin6_family != AF_UNSPEC)
  return (EAFNOSUPPORT);




 if (ifra->ifra_addr.sin6_len != sizeof(struct sockaddr_in6) ||
     ifra->ifra_addr.sin6_family != AF_INET6)
  return (EINVAL);





 if (ifra->ifra_prefixmask.sin6_len > sizeof(struct sockaddr_in6))
  return (EINVAL);






 if (ia == ((void*)0) && ifra->ifra_prefixmask.sin6_len == 0)
  return (EINVAL);
 if (ifra->ifra_prefixmask.sin6_len != 0) {
  plen = in6_mask2len(&ifra->ifra_prefixmask.sin6_addr,
      (u_char *)&ifra->ifra_prefixmask +
      ifra->ifra_prefixmask.sin6_len);
  if (plen <= 0)
   return (EINVAL);
 } else {




  plen = in6_mask2len(&ia->ia_prefixmask.sin6_addr, ((void*)0));
 }





 dst6 = ifra->ifra_dstaddr;
 if ((ifp->if_flags & (IFF_POINTOPOINT|IFF_LOOPBACK)) != 0 &&
     (dst6.sin6_family == AF_INET6)) {
  struct in6_addr in6_tmp;
  u_int32_t zoneid;

  in6_tmp = dst6.sin6_addr;
  if (in6_setscope(&in6_tmp, ifp, &zoneid))
   return (EINVAL);

  if (dst6.sin6_scope_id != 0) {
   if (dst6.sin6_scope_id != zoneid)
    return (EINVAL);
  } else
   dst6.sin6_scope_id = zoneid;


  if (sa6_embedscope(&dst6, 0))
   return (EINVAL);
 }

 ifra->ifra_dstaddr = dst6;






 if (ifra->ifra_dstaddr.sin6_family == AF_INET6) {
  if ((ifp->if_flags & (IFF_POINTOPOINT|IFF_LOOPBACK)) == 0) {

   nd6log((LOG_INFO, "in6_update_ifa: a destination can "
       "be specified for a p2p or a loopback IF only\n"));
   return (EINVAL);
  }
  if (plen != 128) {
   nd6log((LOG_INFO, "in6_update_ifa: prefixlen should "
       "be 128 when dstaddr is specified\n"));
   return (EINVAL);
  }
 }

 lt = &ifra->ifra_lifetime;
 if (lt->ia6t_pltime > lt->ia6t_vltime)
  return (EINVAL);
 if (lt->ia6t_vltime == 0) {




  nd6log((LOG_INFO,
      "in6_update_ifa: valid lifetime is 0 for %s\n",
      ip6_sprintf(ip6buf, &ifra->ifra_addr.sin6_addr)));

  if (ia == ((void*)0))
   return (0);
 }


 if (ia != ((void*)0) && ifra->ifra_prefixmask.sin6_len != 0) {






  if (ia->ia_prefixmask.sin6_len != 0 &&
      in6_mask2len(&ia->ia_prefixmask.sin6_addr, ((void*)0)) != plen) {
   nd6log((LOG_INFO, "in6_validate_ifa: the prefix length "
       "of an existing %s address should not be changed\n",
       ip6_sprintf(ip6buf, &ia->ia_addr.sin6_addr)));

   return (EINVAL);
  }
 }

 return (0);
}
