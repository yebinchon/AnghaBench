
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct in6_addr sin6_addr; } ;
struct in6_ifaddr {TYPE_1__ ia_addr; int ia6_flags; } ;
struct ifnet {int if_type; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
struct dadq {int dad_na_icount; int dad_ns_lcount; int dad_ns_ocount; int dad_ns_icount; } ;
struct TYPE_4__ {int flags; } ;






 int IN6_ARE_ADDR_EQUAL (struct in6_addr*,struct in6_addr*) ;
 int IN6_IFF_DUPLICATED ;
 int IN6_IFF_TENTATIVE ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 int INET6_ADDRSTRLEN ;
 int LOG_ERR ;
 int ND6_IFF_IFDISABLED ;
 TYPE_2__* ND_IFINFO (struct ifnet*) ;
 int if_name (struct ifnet*) ;
 int in6_get_hw_ifid (struct ifnet*,struct in6_addr*) ;
 int ip6_sprintf (char*,struct in6_addr*) ;
 int log (int ,char*,int ,...) ;

__attribute__((used)) static void
nd6_dad_duplicated(struct ifaddr *ifa, struct dadq *dp)
{
 struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
 struct ifnet *ifp;
 char ip6buf[INET6_ADDRSTRLEN];

 log(LOG_ERR, "%s: DAD detected duplicate IPv6 address %s: "
     "NS in/out/loopback=%d/%d/%d, NA in=%d\n",
     if_name(ifa->ifa_ifp), ip6_sprintf(ip6buf, &ia->ia_addr.sin6_addr),
     dp->dad_ns_icount, dp->dad_ns_ocount, dp->dad_ns_lcount,
     dp->dad_na_icount);

 ia->ia6_flags &= ~IN6_IFF_TENTATIVE;
 ia->ia6_flags |= IN6_IFF_DUPLICATED;

 ifp = ifa->ifa_ifp;
 log(LOG_ERR, "%s: DAD complete for %s - duplicate found\n",
     if_name(ifp), ip6_sprintf(ip6buf, &ia->ia_addr.sin6_addr));
 log(LOG_ERR, "%s: manual intervention required\n",
     if_name(ifp));
 if (IN6_IS_ADDR_LINKLOCAL(&ia->ia_addr.sin6_addr)) {
  struct in6_addr in6;





  switch (ifp->if_type) {
  case 130:
  case 131:
  case 129:
  case 128:
   in6 = ia->ia_addr.sin6_addr;
   if (in6_get_hw_ifid(ifp, &in6) == 0 &&
       IN6_ARE_ADDR_EQUAL(&ia->ia_addr.sin6_addr, &in6)) {
    ND_IFINFO(ifp)->flags |= ND6_IFF_IFDISABLED;
    log(LOG_ERR, "%s: possible hardware address "
        "duplication detected, disable IPv6\n",
        if_name(ifp));
   }
   break;
  }
 }
}
