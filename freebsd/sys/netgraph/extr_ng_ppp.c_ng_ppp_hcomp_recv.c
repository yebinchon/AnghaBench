
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int * hook_p ;
struct TYPE_4__ {scalar_t__ enableVJDecompression; } ;
struct TYPE_5__ {int ** hooks; scalar_t__ vjCompHooked; TYPE_1__ conf; } ;


 size_t HOOK_INDEX_VJC_COMP ;
 size_t HOOK_INDEX_VJC_UNCOMP ;
 int NG_FWD_ITEM_HOOK (int,int ,int *) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;


 int ng_ppp_proto_recv (int ,int ,int,int) ;

__attribute__((used)) static int
ng_ppp_hcomp_recv(node_p node, item_p item, uint16_t proto, uint16_t linkNum)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (priv->conf.enableVJDecompression && priv->vjCompHooked) {
  hook_p outHook = ((void*)0);

  switch (proto) {
      case 129:
   outHook = priv->hooks[HOOK_INDEX_VJC_COMP];
   break;
      case 128:
   outHook = priv->hooks[HOOK_INDEX_VJC_UNCOMP];
   break;
  }

  if (outHook) {
   int error;


   NG_FWD_ITEM_HOOK(error, item, outHook);
   return (error);
  }
 }

 return (ng_ppp_proto_recv(node, item, proto, linkNum));
}
