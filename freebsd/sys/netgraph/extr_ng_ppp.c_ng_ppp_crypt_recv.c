
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
struct TYPE_4__ {scalar_t__ enableDecryption; } ;
struct TYPE_5__ {int ** hooks; TYPE_1__ conf; } ;


 size_t HOOK_INDEX_DECRYPT ;
 int NG_FWD_ITEM_HOOK (int,int ,int *) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ PROT_CRYPTD ;
 int ng_ppp_bypass (int ,int ,scalar_t__,scalar_t__) ;
 int ng_ppp_comp_recv (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
ng_ppp_crypt_recv(node_p node, item_p item, uint16_t proto, uint16_t linkNum)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (proto == PROT_CRYPTD) {
  if (priv->conf.enableDecryption &&
      priv->hooks[HOOK_INDEX_DECRYPT] != ((void*)0)) {
   int error;


   NG_FWD_ITEM_HOOK(error, item,
       priv->hooks[HOOK_INDEX_DECRYPT]);
   return (error);
  } else {


   return (ng_ppp_bypass(node, item, proto, linkNum));
  }
 }

 return (ng_ppp_comp_recv(node, item, proto, linkNum));
}
