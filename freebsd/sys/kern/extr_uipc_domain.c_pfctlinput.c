
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct protosw {int (* pr_ctlinput ) (int,struct sockaddr*,void*) ;} ;
struct domain {struct protosw* dom_protoswNPROTOSW; struct protosw* dom_protosw; struct domain* dom_next; } ;


 struct domain* domains ;
 int stub1 (int,struct sockaddr*,void*) ;

void
pfctlinput(int cmd, struct sockaddr *sa)
{
 struct domain *dp;
 struct protosw *pr;

 for (dp = domains; dp; dp = dp->dom_next)
  for (pr = dp->dom_protosw; pr < dp->dom_protoswNPROTOSW; pr++)
   if (pr->pr_ctlinput)
    (*pr->pr_ctlinput)(cmd, sa, (void *)0);
}
