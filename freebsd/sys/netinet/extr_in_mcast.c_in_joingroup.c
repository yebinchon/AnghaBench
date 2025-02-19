
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_multi {int dummy; } ;
struct in_mfilter {int dummy; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int IN_MULTI_LOCK () ;
 int IN_MULTI_UNLOCK () ;
 int in_joingroup_locked (struct ifnet*,struct in_addr const*,struct in_mfilter*,struct in_multi**) ;

int
in_joingroup(struct ifnet *ifp, const struct in_addr *gina,
              struct in_mfilter *imf, struct in_multi **pinm)
{
 int error;

 IN_MULTI_LOCK();
 error = in_joingroup_locked(ifp, gina, imf, pinm);
 IN_MULTI_UNLOCK();

 return (error);
}
