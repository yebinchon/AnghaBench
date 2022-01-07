
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_5__ {scalar_t__ enable; } ;
struct TYPE_6__ {int cx; scalar_t__ compress; TYPE_1__ cfg; } ;


 int M_NETGRAPH_DEFLATE ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int deflateEnd (int *) ;
 int free (TYPE_2__* const,int ) ;
 int inflateEnd (int *) ;

__attribute__((used)) static int
ng_deflate_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);


 if (priv->cfg.enable) {
     if (priv->compress)
  deflateEnd(&priv->cx);
     else
  inflateEnd(&priv->cx);
 }

 free(priv, M_NETGRAPH_DEFLATE);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 return (0);
}
