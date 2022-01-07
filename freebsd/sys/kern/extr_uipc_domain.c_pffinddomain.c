
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {int dom_family; struct domain* dom_next; } ;


 struct domain* domains ;

struct domain *
pffinddomain(int family)
{
 struct domain *dp;

 for (dp = domains; dp != ((void*)0); dp = dp->dom_next)
  if (dp->dom_family == family)
   return (dp);
 return (((void*)0));
}
