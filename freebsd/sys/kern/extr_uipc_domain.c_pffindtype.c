
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_type; } ;
struct domain {struct protosw* dom_protoswNPROTOSW; struct protosw* dom_protosw; } ;


 struct domain* pffinddomain (int) ;

struct protosw *
pffindtype(int family, int type)
{
 struct domain *dp;
 struct protosw *pr;

 dp = pffinddomain(family);
 if (dp == ((void*)0))
  return (((void*)0));

 for (pr = dp->dom_protosw; pr < dp->dom_protoswNPROTOSW; pr++)
  if (pr->pr_type && pr->pr_type == type)
   return (pr);
 return (((void*)0));
}
