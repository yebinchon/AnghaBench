
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* etf_p ;
struct TYPE_4__ {int node; } ;


 int M_NETGRAPH_ETF ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int free (TYPE_1__* const,int ) ;

__attribute__((used)) static int
ng_etf_shutdown(node_p node)
{
 const etf_p privdata = NG_NODE_PRIVATE(node);

 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(privdata->node);
 free(privdata, M_NETGRAPH_ETF);
 return (0);
}
