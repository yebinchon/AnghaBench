
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_4__ {int enableIPv6; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;


 int ENXIO ;
 int NG_FREE_ITEM (int ) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int const) ;
 int PROT_IPV6 ;
 int ng_ppp_hcomp_xmit (int ,int ,int ) ;

__attribute__((used)) static int
ng_ppp_rcvdata_ipv6(hook_p hook, item_p item)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (!priv->conf.enableIPv6) {
  NG_FREE_ITEM(item);
  return (ENXIO);
 }
 return (ng_ppp_hcomp_xmit(NG_HOOK_NODE(hook), item, PROT_IPV6));
}
