
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct mbuf {int dummy; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int * hook_p ;
struct TYPE_4__ {int enableIPX; int enableAtalk; int enableIPv6; int enableIP; } ;
struct TYPE_5__ {int ** hooks; TYPE_1__ conf; } ;
typedef struct mbuf* NGI_M ;


 int ALIGNED_POINTER (int ,int ) ;
 int ENOBUFS ;
 size_t HOOK_INDEX_ATALK ;
 size_t HOOK_INDEX_INET ;
 size_t HOOK_INDEX_IPV6 ;
 size_t HOOK_INDEX_IPX ;
 int M_NOWAIT ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FWD_ITEM_HOOK (int,struct mbuf*,int *) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;




 int caddr_t ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int ng_ppp_bypass (int ,struct mbuf*,int ,int ) ;
 int uint32_t ;

__attribute__((used)) static int
ng_ppp_proto_recv(node_p node, item_p item, uint16_t proto, uint16_t linkNum)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 hook_p outHook = ((void*)0);
 int error;
 switch (proto) {
     case 130:
  if (priv->conf.enableIP)
      outHook = priv->hooks[HOOK_INDEX_INET];
  break;
     case 129:
  if (priv->conf.enableIPv6)
      outHook = priv->hooks[HOOK_INDEX_IPV6];
  break;
     case 131:
  if (priv->conf.enableAtalk)
      outHook = priv->hooks[HOOK_INDEX_ATALK];
  break;
     case 128:
  if (priv->conf.enableIPX)
      outHook = priv->hooks[HOOK_INDEX_IPX];
  break;
 }

 if (outHook == ((void*)0))
  return (ng_ppp_bypass(node, item, proto, linkNum));


 NG_FWD_ITEM_HOOK(error, item, outHook);
 return (error);
}
