
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ng_l2cap_p ;
typedef TYPE_2__* ng_l2cap_con_p ;
typedef int bdaddr_p ;
struct TYPE_8__ {int linktype; int cmd_list; scalar_t__ ident; int con_timo; int remote; int con_handle; scalar_t__ encryption; int state; TYPE_1__* l2cap; } ;
struct TYPE_7__ {int con_list; } ;


 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int M_NETGRAPH_L2CAP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_L2CAP_CON_CLOSED ;
 scalar_t__ NG_L2CAP_FIRST_IDENT ;
 int TAILQ_INIT (int *) ;
 int bcopy (int ,int *,int) ;
 TYPE_2__* malloc (int,int ,int) ;
 int next ;
 int ng_callout_init (int *) ;

ng_l2cap_con_p
ng_l2cap_new_con(ng_l2cap_p l2cap, bdaddr_p bdaddr, int type)
{
 static int fake_con_handle = 0x0f00;
 ng_l2cap_con_p con = ((void*)0);


 con = malloc(sizeof(*con), M_NETGRAPH_L2CAP,
  M_NOWAIT|M_ZERO);
 if (con == ((void*)0))
  return (((void*)0));

 con->l2cap = l2cap;
 con->state = NG_L2CAP_CON_CLOSED;
 con->encryption = 0;
 con->con_handle = fake_con_handle ++;
 if (fake_con_handle > 0x0fff)
  fake_con_handle = 0x0f00;

 bcopy(bdaddr, &con->remote, sizeof(con->remote));
 con->linktype = type;
 ng_callout_init(&con->con_timo);

 con->ident = NG_L2CAP_FIRST_IDENT - 1;
 TAILQ_INIT(&con->cmd_list);


 LIST_INSERT_HEAD(&l2cap->con_list, con, next);

 return (con);
}
