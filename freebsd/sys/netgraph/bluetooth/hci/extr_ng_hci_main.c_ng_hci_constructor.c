
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_hci_unit_p ;
struct TYPE_4__ {int link_policy_mask; int packet_mask; int role_switch; int neighbors; int con_list; int cmdq; int cmd_timo; int buffer; int debug; int node; } ;


 int LIST_INIT (int *) ;
 int M_NETGRAPH_HCI ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_BT_MBUFQ_INIT (int *,int ) ;
 int NG_HCI_BUFF_ACL_SET (int ,int,int,int) ;
 int NG_HCI_BUFF_CMD_SET (int ,int) ;
 int NG_HCI_BUFF_SCO_SET (int ,int,int,int) ;
 int NG_HCI_CMD_QUEUE_LEN ;
 int NG_HCI_WARN_LEVEL ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ng_callout_init (int *) ;

__attribute__((used)) static int
ng_hci_constructor(node_p node)
{
 ng_hci_unit_p unit = ((void*)0);

 unit = malloc(sizeof(*unit), M_NETGRAPH_HCI, M_WAITOK | M_ZERO);

 unit->node = node;
 unit->debug = NG_HCI_WARN_LEVEL;

 unit->link_policy_mask = 0xffff;
 unit->packet_mask = 0xffff;
 unit->role_switch = 1;
 NG_HCI_BUFF_CMD_SET(unit->buffer, 1);
 NG_HCI_BUFF_ACL_SET(unit->buffer, 1, 17, 1);
 NG_HCI_BUFF_SCO_SET(unit->buffer, 1, 10, 1);


 ng_callout_init(&unit->cmd_timo);
 NG_BT_MBUFQ_INIT(&unit->cmdq, NG_HCI_CMD_QUEUE_LEN);


 LIST_INIT(&unit->con_list);
 LIST_INIT(&unit->neighbors);






 NG_NODE_FORCE_WRITER(node);
 NG_NODE_SET_PRIVATE(node, unit);

 return (0);
}
