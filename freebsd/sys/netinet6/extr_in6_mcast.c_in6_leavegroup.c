
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi {int dummy; } ;
struct in6_mfilter {int dummy; } ;


 int IN6_MULTI_LOCK () ;
 int IN6_MULTI_UNLOCK () ;
 int in6_leavegroup_locked (struct in6_multi*,struct in6_mfilter*) ;

int
in6_leavegroup(struct in6_multi *inm, struct in6_mfilter *imf)
{
 int error;

 IN6_MULTI_LOCK();
 error = in6_leavegroup_locked(inm, imf);
 IN6_MULTI_UNLOCK();
 return (error);
}
