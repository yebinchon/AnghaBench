
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_protocol; int pr_type; } ;
struct domain {struct protosw* dom_protoswNPROTOSW; struct protosw* dom_protosw; } ;


 int SOCK_RAW ;
 struct domain* pffinddomain (int) ;

struct protosw *
pffindproto(int family, int protocol, int type)
{
 struct domain *dp;
 struct protosw *pr;
 struct protosw *maybe;

 maybe = ((void*)0);
 if (family == 0)
  return (((void*)0));

 dp = pffinddomain(family);
 if (dp == ((void*)0))
  return (((void*)0));

 for (pr = dp->dom_protosw; pr < dp->dom_protoswNPROTOSW; pr++) {
  if ((pr->pr_protocol == protocol) && (pr->pr_type == type))
   return (pr);

  if (type == SOCK_RAW && pr->pr_type == SOCK_RAW &&
      pr->pr_protocol == 0 && maybe == ((void*)0))
   maybe = pr;
 }
 return (maybe);
}
