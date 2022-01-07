
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* etf_p ;
struct TYPE_4__ {int node; scalar_t__ hashtable; } ;


 int HASHSIZE ;
 int LIST_INIT (scalar_t__) ;
 int M_NETGRAPH_ETF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_etf_constructor(node_p node)
{
 etf_p privdata;
 int i;


 privdata = malloc(sizeof(*privdata), M_NETGRAPH_ETF, M_WAITOK | M_ZERO);
 for (i = 0; i < HASHSIZE; i++) {
  LIST_INIT((privdata->hashtable + i));
 }


 NG_NODE_SET_PRIVATE(node, privdata);
 privdata->node = node;
 return (0);
}
