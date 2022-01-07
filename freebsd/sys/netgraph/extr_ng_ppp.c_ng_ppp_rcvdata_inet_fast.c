
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {int len; } ;
struct TYPE_7__ {TYPE_1__ m_pkthdr; } ;
struct TYPE_6__ {int * activeLinks; } ;


 TYPE_4__* NGI_M (int ) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int const) ;
 int PROT_IP ;
 int ng_ppp_link_xmit (int const,int ,int ,int ,int ) ;

__attribute__((used)) static int
ng_ppp_rcvdata_inet_fast(hook_p hook, item_p item)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);

 return (ng_ppp_link_xmit(node, item, PROT_IP, priv->activeLinks[0],
     NGI_M(item)->m_pkthdr.len));
}
