
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int sin6_addr; } ;
struct nd_prefixctl {int ndpr_plen; int ndpr_pltime; int ndpr_vltime; TYPE_2__ ndpr_prefix; struct ifnet* ndpr_ifp; } ;
struct TYPE_12__ {int* s6_addr32; } ;
struct TYPE_13__ {TYPE_3__ sin6_addr; } ;
struct TYPE_10__ {int sin6_addr; } ;
struct in6_ifaddr {TYPE_4__ ia_addr; TYPE_1__ ia_prefixmask; } ;
struct TYPE_16__ {int* s6_addr32; } ;
struct TYPE_15__ {TYPE_7__ sin6_addr; } ;
struct TYPE_14__ {int ia6t_pltime; int ia6t_vltime; } ;
struct in6_aliasreq {TYPE_6__ ifra_addr; int ifra_flags; TYPE_5__ ifra_lifetime; } ;
struct in6_addr {int* s6_addr32; } ;
struct ifnet {int dummy; } ;
struct ifaddr {int dummy; } ;


 int IN6_IFAUPDATE_DADDELAY ;
 int IN6_IFF_AUTOCONF ;
 int IN6_MASK_ADDR (TYPE_7__*,struct in6_addr*) ;
 int INET6_ADDRSTRLEN ;
 int LOG_ERR ;
 int LOG_INFO ;
 int if_name (struct ifnet*) ;
 int ifa_free (struct ifaddr*) ;
 int in6_mask2len (int *,int *) ;
 int in6_prefixlen2mask (struct in6_addr*,int) ;
 int in6_prepare_ifra (struct in6_aliasreq*,int *,struct in6_addr*) ;
 int in6_update_ifa (struct ifnet*,struct in6_aliasreq*,int *,int) ;
 scalar_t__ in6ifa_ifpforlinklocal (struct ifnet*,int ) ;
 struct in6_ifaddr* in6ifa_ifpwithaddr (struct ifnet*,TYPE_7__*) ;
 int ip6_sprintf (char*,TYPE_7__*) ;
 int log (int ,char*,int ) ;
 int nd6log (int ) ;

__attribute__((used)) static struct in6_ifaddr *
in6_ifadd(struct nd_prefixctl *pr, int mcast)
{
 struct ifnet *ifp = pr->ndpr_ifp;
 struct ifaddr *ifa;
 struct in6_aliasreq ifra;
 struct in6_ifaddr *ia, *ib;
 int error, plen0;
 struct in6_addr mask;
 int prefixlen = pr->ndpr_plen;
 int updateflags;
 char ip6buf[INET6_ADDRSTRLEN];

 in6_prefixlen2mask(&mask, prefixlen);
 ifa = (struct ifaddr *)in6ifa_ifpforlinklocal(ifp, 0);
 if (ifa)
  ib = (struct in6_ifaddr *)ifa;
 else
  return ((void*)0);


 plen0 = in6_mask2len(&ib->ia_prefixmask.sin6_addr, ((void*)0));
 if (prefixlen != plen0) {
  ifa_free(ifa);
  nd6log((LOG_INFO, "in6_ifadd: wrong prefixlen for %s "
      "(prefix=%d ifid=%d)\n",
      if_name(ifp), prefixlen, 128 - plen0));
  return ((void*)0);
 }


 in6_prepare_ifra(&ifra, &pr->ndpr_prefix.sin6_addr, &mask);

 IN6_MASK_ADDR(&ifra.ifra_addr.sin6_addr, &mask);

 ifra.ifra_addr.sin6_addr.s6_addr32[0] |=
     (ib->ia_addr.sin6_addr.s6_addr32[0] & ~mask.s6_addr32[0]);
 ifra.ifra_addr.sin6_addr.s6_addr32[1] |=
     (ib->ia_addr.sin6_addr.s6_addr32[1] & ~mask.s6_addr32[1]);
 ifra.ifra_addr.sin6_addr.s6_addr32[2] |=
     (ib->ia_addr.sin6_addr.s6_addr32[2] & ~mask.s6_addr32[2]);
 ifra.ifra_addr.sin6_addr.s6_addr32[3] |=
     (ib->ia_addr.sin6_addr.s6_addr32[3] & ~mask.s6_addr32[3]);
 ifa_free(ifa);


 ifra.ifra_lifetime.ia6t_vltime = pr->ndpr_vltime;
 ifra.ifra_lifetime.ia6t_pltime = pr->ndpr_pltime;



 ifra.ifra_flags |= IN6_IFF_AUTOCONF;






 ifa = (struct ifaddr *)in6ifa_ifpwithaddr(ifp,
     &ifra.ifra_addr.sin6_addr);
 if (ifa != ((void*)0)) {
  ifa_free(ifa);

  log(LOG_INFO, "in6_ifadd: %s is already configured\n",
      ip6_sprintf(ip6buf, &ifra.ifra_addr.sin6_addr));
  return (((void*)0));
 }







 updateflags = 0;
 if (mcast)
  updateflags |= IN6_IFAUPDATE_DADDELAY;
 if ((error = in6_update_ifa(ifp, &ifra, ((void*)0), updateflags)) != 0) {
  nd6log((LOG_ERR,
      "in6_ifadd: failed to make ifaddr %s on %s (errno=%d)\n",
      ip6_sprintf(ip6buf, &ifra.ifra_addr.sin6_addr),
      if_name(ifp), error));
  return (((void*)0));
 }

 ia = in6ifa_ifpwithaddr(ifp, &ifra.ifra_addr.sin6_addr);





 return (ia);
}
