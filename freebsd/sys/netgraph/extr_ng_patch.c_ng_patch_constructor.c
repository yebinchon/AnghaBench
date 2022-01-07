
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int dlt; } ;


 int DLT_RAW ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_patch_constructor(node_p node)
{
 priv_p privdata;

 privdata = malloc(sizeof(*privdata), M_NETGRAPH, M_WAITOK | M_ZERO);
 privdata->dlt = DLT_RAW;

 NG_NODE_SET_PRIVATE(node, privdata);

 return (0);
}
