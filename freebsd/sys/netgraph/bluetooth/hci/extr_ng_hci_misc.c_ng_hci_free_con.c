
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_8__ {scalar_t__ link_type; int conq; int pending; TYPE_1__* unit; } ;
struct TYPE_7__ {int buffer; } ;


 int LIST_REMOVE (TYPE_2__*,int ) ;
 int M_NETGRAPH_HCI ;
 int NG_BT_ITEMQ_DESTROY (int *) ;
 int NG_HCI_BUFF_ACL_FREE (int ,int ) ;
 int NG_HCI_BUFF_SCO_FREE (int ,int ) ;
 scalar_t__ NG_HCI_LINK_SCO ;
 int bzero (TYPE_2__*,int) ;
 int free (TYPE_2__*,int ) ;
 int next ;

void
ng_hci_free_con(ng_hci_unit_con_p con)
{
 LIST_REMOVE(con, next);






 if (con->link_type != NG_HCI_LINK_SCO)
  NG_HCI_BUFF_ACL_FREE(con->unit->buffer, con->pending);
 else
  NG_HCI_BUFF_SCO_FREE(con->unit->buffer, con->pending);

 NG_BT_ITEMQ_DESTROY(&con->conq);

 bzero(con, sizeof(*con));
 free(con, M_NETGRAPH_HCI);
}
