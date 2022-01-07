
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int timer; } ;


 int M_NG_PIPE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ng_callout_init (int *) ;

__attribute__((used)) static int
ngp_constructor(node_p node)
{
 priv_p priv;

 priv = malloc(sizeof(*priv), M_NG_PIPE, M_ZERO | M_WAITOK);
 NG_NODE_SET_PRIVATE(node, priv);


 NG_NODE_FORCE_WRITER(node);

 ng_callout_init(&priv->timer);

 return (0);
}
