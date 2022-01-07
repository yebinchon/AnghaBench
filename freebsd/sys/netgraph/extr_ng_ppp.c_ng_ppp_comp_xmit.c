
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
struct TYPE_4__ {scalar_t__ enableCompression; } ;
struct TYPE_5__ {int ** hooks; TYPE_1__ conf; } ;
typedef struct mbuf* NGI_M ;


 int ENOBUFS ;
 size_t HOOK_INDEX_COMPRESS ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FWD_ITEM_HOOK (int,struct mbuf*,int *) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int PROT_COMPD ;
 int PROT_CRYPTD ;
 struct mbuf* ng_ppp_addproto (struct mbuf*,int,int ) ;
 int ng_ppp_crypt_xmit (int ,int ,int) ;

__attribute__((used)) static int
ng_ppp_comp_xmit(node_p node, item_p item, uint16_t proto)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (priv->conf.enableCompression &&
     proto < 0x4000 &&
     proto != PROT_COMPD &&
     proto != PROT_CRYPTD &&
     priv->hooks[HOOK_INDEX_COMPRESS] != ((void*)0)) {
  struct mbuf *m;
  int error;

  NGI_GET_M(item, m);
  if ((m = ng_ppp_addproto(m, proto, 0)) == ((void*)0)) {
   NG_FREE_ITEM(item);
   return (ENOBUFS);
  }
  NGI_M(item) = m;


  NG_FWD_ITEM_HOOK(error, item, priv->hooks[HOOK_INDEX_COMPRESS]);
  return (error);
 }

 return (ng_ppp_crypt_xmit(node, item, proto));
}
