
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct filter {scalar_t__ match_hook; } ;
typedef scalar_t__ hook_p ;
typedef TYPE_3__* etf_p ;
struct TYPE_6__ {scalar_t__ hook; } ;
struct TYPE_5__ {scalar_t__ hook; } ;
struct TYPE_7__ {TYPE_2__ nomatch_hook; TYPE_1__ downstream_hook; int * hashtable; } ;


 int HASHSIZE ;
 struct filter* LIST_FIRST (int *) ;
 struct filter* LIST_NEXT (struct filter*,int ) ;
 int LIST_REMOVE (struct filter*,int ) ;
 int M_NETGRAPH_ETF ;
 int NG_HOOK_NODE (scalar_t__) ;
 struct filter* NG_HOOK_PRIVATE (scalar_t__) ;
 int NG_HOOK_SET_PRIVATE (scalar_t__,int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int free (struct filter*,int ) ;
 int next ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_etf_disconnect(hook_p hook)
{
 const etf_p etfp = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 int i;
 struct filter *fil1, *fil2;


 for (i = 0; i < HASHSIZE; i++) {
  fil1 = LIST_FIRST(&etfp->hashtable[i]);
  while (fil1 != ((void*)0)) {
   fil2 = LIST_NEXT(fil1, next);
   if (fil1->match_hook == hook) {
    LIST_REMOVE(fil1, next);
    free(fil1, M_NETGRAPH_ETF);
   }
   fil1 = fil2;
  }
 }


 if (hook == etfp->downstream_hook.hook) {
  etfp->downstream_hook.hook = ((void*)0);
 } else if (hook == etfp->nomatch_hook.hook) {
  etfp->nomatch_hook.hook = ((void*)0);
 } else {
  if (NG_HOOK_PRIVATE(hook))
   free(NG_HOOK_PRIVATE(hook), M_NETGRAPH_ETF);
 }

 NG_HOOK_SET_PRIVATE(hook, ((void*)0));

 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0)
 && (NG_NODE_IS_VALID(NG_HOOK_NODE(hook))))
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
