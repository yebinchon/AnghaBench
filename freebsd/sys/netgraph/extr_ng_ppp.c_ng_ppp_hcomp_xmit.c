
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
struct TYPE_4__ {scalar_t__ enableVJCompression; } ;
struct TYPE_5__ {int * hooks; scalar_t__ vjCompHooked; TYPE_1__ conf; } ;


 size_t HOOK_INDEX_VJC_IP ;
 int NG_FWD_ITEM_HOOK (int,int ,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ PROT_IP ;
 int ng_ppp_comp_xmit (int ,int ,scalar_t__) ;

__attribute__((used)) static int
ng_ppp_hcomp_xmit(node_p node, item_p item, uint16_t proto)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (proto == PROT_IP &&
     priv->conf.enableVJCompression &&
     priv->vjCompHooked) {
  int error;


  NG_FWD_ITEM_HOOK(error, item, priv->hooks[HOOK_INDEX_VJC_IP]);
  return (error);
 }

 return (ng_ppp_comp_xmit(node, item, proto));
}
