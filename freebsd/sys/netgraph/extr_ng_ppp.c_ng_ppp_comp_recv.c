
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
struct TYPE_4__ {scalar_t__ enableDecompression; } ;
struct TYPE_5__ {int ** hooks; TYPE_1__ conf; } ;
typedef struct mbuf* NGI_M ;


 int EIO ;
 size_t HOOK_INDEX_DECOMPRESS ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FWD_ITEM_HOOK (int,int ,int *) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ NG_PPP_DECOMPRESS_FULL ;
 int PROT_COMPD ;
 struct mbuf* ng_ppp_addproto (struct mbuf*,int,int ) ;
 int ng_ppp_bypass (int ,int ,int,int) ;
 int ng_ppp_hcomp_recv (int ,int ,int,int) ;

__attribute__((used)) static int
ng_ppp_comp_recv(node_p node, item_p item, uint16_t proto, uint16_t linkNum)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (proto < 0x4000 &&
     ((proto == PROT_COMPD && priv->conf.enableDecompression) ||
     priv->conf.enableDecompression == NG_PPP_DECOMPRESS_FULL) &&
     priv->hooks[HOOK_INDEX_DECOMPRESS] != ((void*)0)) {
  int error;

  if (priv->conf.enableDecompression == NG_PPP_DECOMPRESS_FULL) {
   struct mbuf *m;
   NGI_GET_M(item, m);
   if ((m = ng_ppp_addproto(m, proto, 0)) == ((void*)0)) {
    NG_FREE_ITEM(item);
    return (EIO);
   }
   NGI_M(item) = m;
  }


  NG_FWD_ITEM_HOOK(error, item,
      priv->hooks[HOOK_INDEX_DECOMPRESS]);
  return (error);
 } else if (proto == PROT_COMPD) {


  return (ng_ppp_bypass(node, item, proto, linkNum));
 }

 return (ng_ppp_hcomp_recv(node, item, proto, linkNum));
}
