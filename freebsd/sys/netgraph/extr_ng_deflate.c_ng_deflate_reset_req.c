
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {scalar_t__ enable; } ;
struct TYPE_5__ {int cx; scalar_t__ compress; TYPE_1__ cfg; scalar_t__ seqnum; } ;


 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int deflateReset (int *) ;
 int inflateReset (int *) ;

__attribute__((used)) static void
ng_deflate_reset_req(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 priv->seqnum = 0;
 if (priv->cfg.enable) {
     if (priv->compress)
  deflateReset(&priv->cx);
     else
  inflateReset(&priv->cx);
 }
}
