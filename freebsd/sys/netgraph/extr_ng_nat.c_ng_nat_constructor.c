
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int nextid; int node; int redirhead; int dlt; scalar_t__ rdrcount; int lib; } ;


 int DLT_RAW ;
 int LibAliasInit (int *) ;
 int LibAliasSetMode (int ,int ,int ) ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 int PKT_ALIAS_SAME_PORTS ;
 int STAILQ_INIT (int *) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_nat_constructor(node_p node)
{
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);


 priv->lib = LibAliasInit(((void*)0));


 (void )LibAliasSetMode(priv->lib, PKT_ALIAS_SAME_PORTS,
     PKT_ALIAS_SAME_PORTS);


 priv->rdrcount = 0;
 priv->nextid = 1;
 priv->dlt = DLT_RAW;
 STAILQ_INIT(&priv->redirhead);


 NG_NODE_SET_PRIVATE(node, priv);
 priv->node = node;





 NG_NODE_FORCE_WRITER(node);

 return (0);
}
