
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ia6t_vltime; scalar_t__ ia6t_pltime; void* ia6t_preferred; void* ia6t_expire; } ;
struct in6_ifaddr {int ia6_flags; TYPE_1__ ia6_lifetime; void* ia6_updatetime; } ;
struct in6_aliasreq {int ifra_flags; TYPE_1__ ifra_lifetime; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int flags; } ;


 int IN6_IFF_DEPRECATED ;
 int IN6_IFF_DUPLICATED ;
 int IN6_IFF_TENTATIVE ;
 int ND6_IFF_IFDISABLED ;
 scalar_t__ ND6_INFINITE_LIFETIME ;
 TYPE_2__* ND_IFINFO (struct ifnet*) ;
 int in6_notify_ifa (struct ifnet*,struct in6_ifaddr*,struct in6_aliasreq*,int) ;
 scalar_t__ in6if_do_dad (struct ifnet*) ;
 void* time_uptime ;

__attribute__((used)) static int
in6_update_ifa_internal(struct ifnet *ifp, struct in6_aliasreq *ifra,
    struct in6_ifaddr *ia, int hostIsNew, int flags)
{
 int error;


 ia->ia6_updatetime = time_uptime;






 ia->ia6_lifetime = ifra->ifra_lifetime;
 if (ia->ia6_lifetime.ia6t_vltime != ND6_INFINITE_LIFETIME) {
  ia->ia6_lifetime.ia6t_expire =
      time_uptime + ia->ia6_lifetime.ia6t_vltime;
 } else
  ia->ia6_lifetime.ia6t_expire = 0;
 if (ia->ia6_lifetime.ia6t_pltime != ND6_INFINITE_LIFETIME) {
  ia->ia6_lifetime.ia6t_preferred =
      time_uptime + ia->ia6_lifetime.ia6t_pltime;
 } else
  ia->ia6_lifetime.ia6t_preferred = 0;





 if ((ifra->ifra_flags & IN6_IFF_DEPRECATED) != 0) {
  ia->ia6_lifetime.ia6t_pltime = 0;
  ia->ia6_lifetime.ia6t_preferred = time_uptime;
 }




 ia->ia6_flags = ifra->ifra_flags;






 ia->ia6_flags &= ~IN6_IFF_DUPLICATED;





 if (in6if_do_dad(ifp) &&
     (hostIsNew || (ND_IFINFO(ifp)->flags & ND6_IFF_IFDISABLED)))
  ia->ia6_flags |= IN6_IFF_TENTATIVE;


 error = in6_notify_ifa(ifp, ia, ifra, hostIsNew);

 return (error);
}
