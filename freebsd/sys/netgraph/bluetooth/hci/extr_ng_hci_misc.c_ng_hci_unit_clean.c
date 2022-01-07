
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* ng_hci_unit_p ;
typedef TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int state; int buffer; int con_list; int cmdq; } ;


 int LIST_EMPTY (int *) ;
 TYPE_2__* LIST_FIRST (int *) ;
 int NG_BT_MBUFQ_DRAIN (int *) ;
 int NG_HCI_BUFF_ACL_FREE (int ,int) ;
 int NG_HCI_BUFF_ACL_TOTAL (int ,int) ;
 int NG_HCI_BUFF_CMD_SET (int ,int) ;
 int NG_HCI_BUFF_SCO_FREE (int ,int) ;
 int NG_HCI_BUFF_SCO_TOTAL (int ,int) ;
 int NG_HCI_CON_TIMEOUT_PENDING ;
 int NG_HCI_UNIT_COMMAND_PENDING ;
 int ng_hci_command_untimeout (TYPE_1__*) ;
 int ng_hci_con_untimeout (TYPE_2__*) ;
 int ng_hci_flush_neighbor_cache (TYPE_1__*) ;
 int ng_hci_free_con (TYPE_2__*) ;
 int ng_hci_lp_discon_ind (TYPE_2__*,int) ;

void
ng_hci_unit_clean(ng_hci_unit_p unit, int reason)
{
 int size;


 if (unit->state & NG_HCI_UNIT_COMMAND_PENDING)
  ng_hci_command_untimeout(unit);

 NG_BT_MBUFQ_DRAIN(&unit->cmdq);
 NG_HCI_BUFF_CMD_SET(unit->buffer, 1);


 while (!LIST_EMPTY(&unit->con_list)) {
  ng_hci_unit_con_p con = LIST_FIRST(&unit->con_list);


  if (con->flags & NG_HCI_CON_TIMEOUT_PENDING)
   ng_hci_con_untimeout(con);






  ng_hci_lp_discon_ind(con, reason);
  ng_hci_free_con(con);
 }

 NG_HCI_BUFF_ACL_TOTAL(unit->buffer, size);
 NG_HCI_BUFF_ACL_FREE(unit->buffer, size);

 NG_HCI_BUFF_SCO_TOTAL(unit->buffer, size);
 NG_HCI_BUFF_SCO_FREE(unit->buffer, size);


 ng_hci_flush_neighbor_cache(unit);
}
