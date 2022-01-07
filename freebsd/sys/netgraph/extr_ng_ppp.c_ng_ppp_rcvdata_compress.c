
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
typedef struct mbuf* item_p ;
typedef int hook_p ;
struct TYPE_4__ {int enableCompression; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
typedef struct mbuf* NGI_M ;


 int EIO ;
 int ENXIO ;
 int NGI_GET_M (struct mbuf*,struct mbuf*) ;
 int NG_FREE_ITEM (struct mbuf*) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int const) ;


 int PROT_COMPD ;
 int PROT_VALID (int ) ;
 int ng_ppp_crypt_xmit (int const,struct mbuf*,int ) ;
 struct mbuf* ng_ppp_cutproto (struct mbuf*,int *) ;

__attribute__((used)) static int
ng_ppp_rcvdata_compress(hook_p hook, item_p item)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);
 uint16_t proto;

 switch (priv->conf.enableCompression) {
     case 128:
  NG_FREE_ITEM(item);
  return (ENXIO);
     case 129:
  {
   struct mbuf *m;

   NGI_GET_M(item, m);
   if ((m = ng_ppp_cutproto(m, &proto)) == ((void*)0)) {
    NG_FREE_ITEM(item);
    return (EIO);
   }
   NGI_M(item) = m;
   if (!PROT_VALID(proto)) {
    NG_FREE_ITEM(item);
    return (EIO);
   }
  }
  break;
     default:
  proto = PROT_COMPD;
  break;
 }
 return (ng_ppp_crypt_xmit(node, item, proto));
}
