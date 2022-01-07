
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_hci_unit_p ;
struct TYPE_5__ {int cmdq; int * node; } ;


 int M_NETGRAPH_HCI ;
 int NG_BT_MBUFQ_DESTROY (int *) ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*,int ) ;
 int ng_hci_unit_clean (TYPE_1__*,int) ;

__attribute__((used)) static int
ng_hci_shutdown(node_p node)
{
 ng_hci_unit_p unit = (ng_hci_unit_p) NG_NODE_PRIVATE(node);

 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);

 unit->node = ((void*)0);
 ng_hci_unit_clean(unit, 0x16 );

 NG_BT_MBUFQ_DESTROY(&unit->cmdq);

 bzero(unit, sizeof(*unit));
 free(unit, M_NETGRAPH_HCI);

 return (0);
}
