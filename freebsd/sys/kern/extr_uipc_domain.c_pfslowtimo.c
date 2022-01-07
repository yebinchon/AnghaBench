
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int (* pr_slowtimo ) () ;} ;
struct epoch_tracker {int dummy; } ;
struct domain {struct protosw* dom_protoswNPROTOSW; struct protosw* dom_protosw; struct domain* dom_next; } ;


 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int callout_reset (int *,int,void (*) (void*),int *) ;
 struct domain* domains ;
 int hz ;
 int pfslow_callout ;
 int stub1 () ;

__attribute__((used)) static void
pfslowtimo(void *arg)
{
 struct epoch_tracker et;
 struct domain *dp;
 struct protosw *pr;

 NET_EPOCH_ENTER(et);
 for (dp = domains; dp; dp = dp->dom_next)
  for (pr = dp->dom_protosw; pr < dp->dom_protoswNPROTOSW; pr++)
   if (pr->pr_slowtimo)
    (*pr->pr_slowtimo)();
 NET_EPOCH_EXIT(et);
 callout_reset(&pfslow_callout, hz/2, pfslowtimo, ((void*)0));
}
