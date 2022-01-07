
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_multi {int dummy; } ;
struct in_mfilter {int dummy; } ;


 int IN_MULTI_LOCK () ;
 int IN_MULTI_UNLOCK () ;
 int in_leavegroup_locked (struct in_multi*,struct in_mfilter*) ;

int
in_leavegroup(struct in_multi *inm, struct in_mfilter *imf)
{
 int error;

 IN_MULTI_LOCK();
 error = in_leavegroup_locked(inm, imf);
 IN_MULTI_UNLOCK();

 return (error);
}
