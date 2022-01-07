
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef scalar_t__ time_t ;
struct TYPE_13__ {struct ifnet* ifa_ifp; } ;
struct TYPE_17__ {scalar_t__ ia6t_vltime; scalar_t__ ia6t_pltime; } ;
struct TYPE_21__ {int* s6_addr32; int * s6_addr; } ;
struct TYPE_19__ {TYPE_7__ sin6_addr; } ;
struct TYPE_15__ {int sin6_addr; } ;
struct in6_ifaddr {scalar_t__ ia6_updatetime; TYPE_10__ ia_ifa; TYPE_6__* ia6_ndpr; TYPE_3__ ia6_lifetime; TYPE_5__ ia_addr; TYPE_1__ ia_prefixmask; } ;
struct TYPE_18__ {scalar_t__ ia6t_pltime; scalar_t__ ia6t_vltime; } ;
struct TYPE_14__ {int* s6_addr32; } ;
struct TYPE_16__ {TYPE_12__ sin6_addr; } ;
struct in6_aliasreq {int ifra_flags; TYPE_5__ ifra_addr; TYPE_4__ ifra_lifetime; TYPE_2__ ifra_prefixmask; } ;
struct ifnet {int dummy; } ;
struct TYPE_20__ {int ndpr_addrcnt; } ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ IFA6_IS_DEPRECATED (struct in6_ifaddr const*) ;
 scalar_t__ IFA6_IS_INVALID (struct in6_ifaddr const*) ;
 int IN6_IFAUPDATE_DADDELAY ;
 int IN6_IFF_AUTOCONF ;
 int IN6_IFF_TEMPORARY ;
 int IN6_MASK_ADDR (TYPE_7__*,TYPE_12__*) ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 scalar_t__ ND6_INFINITE_LIFETIME ;
 scalar_t__ V_ip6_desync_factor ;
 scalar_t__ V_ip6_temp_preferred_lifetime ;
 scalar_t__ V_ip6_temp_regen_advance ;
 scalar_t__ V_ip6_temp_valid_lifetime ;
 int ifa_free (TYPE_10__*) ;
 scalar_t__ in6_get_tmpifid (struct ifnet*,int *,int const*,int) ;
 scalar_t__ in6_localip (TYPE_7__*) ;
 int in6_prepare_ifra (struct in6_aliasreq*,TYPE_7__*,int *) ;
 int in6_update_ifa (struct ifnet*,struct in6_aliasreq*,int *,int) ;
 struct in6_ifaddr* in6ifa_ifpwithaddr (struct ifnet*,TYPE_7__*) ;
 int nd6log (int ) ;
 int pfxlist_onlink_check () ;
 scalar_t__ time_uptime ;

int
in6_tmpifadd(const struct in6_ifaddr *ia0, int forcegen, int delay)
{
 struct ifnet *ifp = ia0->ia_ifa.ifa_ifp;
 struct in6_ifaddr *newia;
 struct in6_aliasreq ifra;
 int error;
 int trylimit = 3;
 int updateflags;
 u_int32_t randid[2];
 time_t vltime0, pltime0;

 in6_prepare_ifra(&ifra, &ia0->ia_addr.sin6_addr,
     &ia0->ia_prefixmask.sin6_addr);

 ifra.ifra_addr = ia0->ia_addr;

 IN6_MASK_ADDR(&ifra.ifra_addr.sin6_addr,
     &ifra.ifra_prefixmask.sin6_addr);

  again:
 if (in6_get_tmpifid(ifp, (u_int8_t *)randid,
     (const u_int8_t *)&ia0->ia_addr.sin6_addr.s6_addr[8], forcegen)) {
  nd6log((LOG_NOTICE, "in6_tmpifadd: failed to find a good "
      "random IFID\n"));
  return (EINVAL);
 }
 ifra.ifra_addr.sin6_addr.s6_addr32[2] |=
     (randid[0] & ~(ifra.ifra_prefixmask.sin6_addr.s6_addr32[2]));
 ifra.ifra_addr.sin6_addr.s6_addr32[3] |=
     (randid[1] & ~(ifra.ifra_prefixmask.sin6_addr.s6_addr32[3]));
 if (in6_localip(&ifra.ifra_addr.sin6_addr) != 0) {
  if (trylimit-- > 0) {
   forcegen = 1;
   goto again;
  }


  nd6log((LOG_NOTICE, "in6_tmpifadd: failed to "
      "find a unique random IFID\n"));
  return (EEXIST);
 }
 if (ia0->ia6_lifetime.ia6t_vltime != ND6_INFINITE_LIFETIME) {
  vltime0 = IFA6_IS_INVALID(ia0) ? 0 :
      (ia0->ia6_lifetime.ia6t_vltime -
      (time_uptime - ia0->ia6_updatetime));
  if (vltime0 > V_ip6_temp_valid_lifetime)
   vltime0 = V_ip6_temp_valid_lifetime;
 } else
  vltime0 = V_ip6_temp_valid_lifetime;
 if (ia0->ia6_lifetime.ia6t_pltime != ND6_INFINITE_LIFETIME) {
  pltime0 = IFA6_IS_DEPRECATED(ia0) ? 0 :
      (ia0->ia6_lifetime.ia6t_pltime -
      (time_uptime - ia0->ia6_updatetime));
  if (pltime0 > V_ip6_temp_preferred_lifetime - V_ip6_desync_factor){
   pltime0 = V_ip6_temp_preferred_lifetime -
       V_ip6_desync_factor;
  }
 } else
  pltime0 = V_ip6_temp_preferred_lifetime - V_ip6_desync_factor;
 ifra.ifra_lifetime.ia6t_vltime = vltime0;
 ifra.ifra_lifetime.ia6t_pltime = pltime0;





 if (ifra.ifra_lifetime.ia6t_pltime <= V_ip6_temp_regen_advance)
  return (0);



 ifra.ifra_flags |= (IN6_IFF_AUTOCONF|IN6_IFF_TEMPORARY);


 updateflags = 0;
 if (delay)
  updateflags |= IN6_IFAUPDATE_DADDELAY;
 if ((error = in6_update_ifa(ifp, &ifra, ((void*)0), updateflags)) != 0)
  return (error);

 newia = in6ifa_ifpwithaddr(ifp, &ifra.ifra_addr.sin6_addr);
 if (newia == ((void*)0)) {
  nd6log((LOG_ERR,
      "in6_tmpifadd: ifa update succeeded, but we got "
      "no ifaddr\n"));
  return (EINVAL);
 }
 newia->ia6_ndpr = ia0->ia6_ndpr;
 newia->ia6_ndpr->ndpr_addrcnt++;
 ifa_free(&newia->ia_ifa);
 pfxlist_onlink_check();

 return (0);
}
