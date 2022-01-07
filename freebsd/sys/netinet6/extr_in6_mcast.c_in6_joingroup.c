
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi {int dummy; } ;
struct in6_mfilter {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int IN6_MULTI_LOCK () ;
 int IN6_MULTI_UNLOCK () ;
 int in6_joingroup_locked (struct ifnet*,struct in6_addr const*,int *,struct in6_multi**,int const) ;

int
in6_joingroup(struct ifnet *ifp, const struct in6_addr *mcaddr,
              struct in6_mfilter *imf, struct in6_multi **pinm,
    const int delay)
{
 int error;

 IN6_MULTI_LOCK();
 error = in6_joingroup_locked(ifp, mcaddr, ((void*)0), pinm, delay);
 IN6_MULTI_UNLOCK();
 return (error);
}
