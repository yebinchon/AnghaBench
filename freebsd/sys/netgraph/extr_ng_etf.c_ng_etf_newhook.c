
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ETF_hookinfo {void* hook; } ;
typedef int node_p ;
typedef void* hook_p ;
typedef TYPE_1__* etf_p ;
struct TYPE_3__ {struct ETF_hookinfo nomatch_hook; scalar_t__ packets_out; scalar_t__ packets_in; struct ETF_hookinfo downstream_hook; } ;


 int ENOMEM ;
 int M_NETGRAPH_ETF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_ETF_HOOK_DOWNSTREAM ;
 int NG_ETF_HOOK_NOMATCH ;
 int NG_HOOK_SET_PRIVATE (void*,struct ETF_hookinfo*) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 struct ETF_hookinfo* malloc (int,int ,int) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_etf_newhook(node_p node, hook_p hook, const char *name)
{
 const etf_p etfp = NG_NODE_PRIVATE(node);
 struct ETF_hookinfo *hpriv;

 if (strcmp(name, NG_ETF_HOOK_DOWNSTREAM) == 0) {
  etfp->downstream_hook.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &etfp->downstream_hook);
  etfp->packets_in = 0;
  etfp->packets_out = 0;
 } else if (strcmp(name, NG_ETF_HOOK_NOMATCH) == 0) {
  etfp->nomatch_hook.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &etfp->nomatch_hook);
 } else {




  hpriv = malloc(sizeof(*hpriv),
   M_NETGRAPH_ETF, M_NOWAIT | M_ZERO);
  if (hpriv == ((void*)0)) {
   return (ENOMEM);
  }

  NG_HOOK_SET_PRIVATE(hook, hpriv);
  hpriv->hook = hook;
 }
 return(0);
}
