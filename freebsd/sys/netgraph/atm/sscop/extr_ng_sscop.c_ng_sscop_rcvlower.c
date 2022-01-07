
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_dropped; int in_packets; } ;
struct priv {TYPE_1__ stats; int sscop; int * upper; int enabled; } ;
struct mbuf {int dummy; } ;
typedef int item_p ;
typedef int hook_p ;


 int EINVAL ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_HOOK_NODE (int ) ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 scalar_t__ SSCOP_IDLE ;
 scalar_t__ sscop_getstate (int ) ;
 int sscop_input (int ,struct mbuf*) ;

__attribute__((used)) static int
ng_sscop_rcvlower(hook_p hook, item_p item)
{
 struct priv *priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct mbuf *m;

 if (!priv->enabled) {
  NG_FREE_ITEM(item);
  return EINVAL;
 }





 if (priv->upper != ((void*)0) || sscop_getstate(priv->sscop) != SSCOP_IDLE) {
  NGI_GET_M(item, m);
  priv->stats.in_packets++;
  sscop_input(priv->sscop, m);
 } else {
  priv->stats.in_dropped++;
 }
 NG_FREE_ITEM(item);

 return (0);
}
