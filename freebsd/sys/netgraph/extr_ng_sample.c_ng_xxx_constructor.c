
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* xxx_p ;
typedef int node_p ;
struct TYPE_6__ {int node; TYPE_1__* channel; } ;
struct TYPE_5__ {int dlci; int channel; } ;


 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_2__*) ;
 int XXX_NUM_DLCIS ;
 TYPE_2__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_xxx_constructor(node_p node)
{
 xxx_p privdata;
 int i;


 privdata = malloc(sizeof(*privdata), M_NETGRAPH, M_WAITOK | M_ZERO);
 for (i = 0; i < XXX_NUM_DLCIS; i++) {
  privdata->channel[i].dlci = -2;
  privdata->channel[i].channel = i;
 }


 NG_NODE_SET_PRIVATE(node, privdata);
 privdata->node = node;
 return (0);
}
