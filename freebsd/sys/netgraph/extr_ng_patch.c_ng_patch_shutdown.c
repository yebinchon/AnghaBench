
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {struct TYPE_4__* const conf; } ;


 int M_NETGRAPH ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int free (TYPE_1__* const,int ) ;

__attribute__((used)) static int
ng_patch_shutdown(node_p node)
{
 const priv_p privdata = NG_NODE_PRIVATE(node);

 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);

 if (privdata->conf != ((void*)0))
  free(privdata->conf, M_NETGRAPH);

 free(privdata, M_NETGRAPH);

 return (0);
}
