
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
struct TYPE_4__ {int enableVJDecompression; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;


 int ENXIO ;
 int NG_FREE_ITEM (int ) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int const) ;
 int NG_PPP_BUNDLE_LINKNUM ;
 int PROT_IP ;
 int ng_ppp_proto_recv (int const,int ,int ,int ) ;

__attribute__((used)) static int
ng_ppp_rcvdata_vjc_ip(hook_p hook, item_p item)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (!priv->conf.enableVJDecompression) {
  NG_FREE_ITEM(item);
  return (ENXIO);
 }
 return (ng_ppp_proto_recv(node, item, PROT_IP, NG_PPP_BUNDLE_LINKNUM));
}
