
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int node; } ;


 int M_NETGRAPH_GIF_DEMUX ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_gif_demux_constructor(node_p node)
{
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH_GIF_DEMUX, M_WAITOK | M_ZERO);
 priv->node = node;

 NG_NODE_SET_PRIVATE(node, priv);


 return (0);
}
