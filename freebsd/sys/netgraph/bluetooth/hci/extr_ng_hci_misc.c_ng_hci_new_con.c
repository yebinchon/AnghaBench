
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ng_hci_unit_p ;
typedef TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_8__ {int link_type; int con_timo; int conq; int con_handle; int state; TYPE_1__* unit; } ;
struct TYPE_7__ {int con_list; int buffer; } ;


 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int M_NETGRAPH_HCI ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_BT_ITEMQ_INIT (int *,int) ;
 int NG_HCI_BUFF_ACL_TOTAL (int ,int) ;
 int NG_HCI_BUFF_SCO_TOTAL (int ,int) ;
 int NG_HCI_CON_CLOSED ;
 int NG_HCI_LINK_SCO ;
 TYPE_2__* malloc (int,int ,int) ;
 int next ;
 int ng_callout_init (int *) ;

ng_hci_unit_con_p
ng_hci_new_con(ng_hci_unit_p unit, int link_type)
{
 ng_hci_unit_con_p con = ((void*)0);
 int num_pkts;
 static int fake_con_handle = 0x0f00;

 con = malloc(sizeof(*con), M_NETGRAPH_HCI,
  M_NOWAIT | M_ZERO);
 if (con != ((void*)0)) {
  con->unit = unit;
  con->state = NG_HCI_CON_CLOSED;
  con->con_handle = fake_con_handle ++;
  if (fake_con_handle > 0x0fff)
   fake_con_handle = 0x0f00;

  con->link_type = link_type;

  if (con->link_type != NG_HCI_LINK_SCO)
   NG_HCI_BUFF_ACL_TOTAL(unit->buffer, num_pkts);
  else
   NG_HCI_BUFF_SCO_TOTAL(unit->buffer, num_pkts);

  NG_BT_ITEMQ_INIT(&con->conq, num_pkts);

  ng_callout_init(&con->con_timo);

  LIST_INSERT_HEAD(&unit->con_list, con, next);
 }

 return (con);
}
