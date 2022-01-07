
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ng_mesg {scalar_t__ data; } ;
typedef TYPE_1__* ng_hci_unit_p ;
typedef TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_8__ {int completed; int con_handle; } ;
typedef TYPE_3__ ng_hci_sync_con_queue_ep ;
typedef int * hook_p ;
struct TYPE_7__ {scalar_t__ link_type; int con_handle; } ;
struct TYPE_6__ {int node; int * sco; int * acl; } ;


 int ENOMEM ;
 int ENOTCONN ;
 int M_NOWAIT ;
 int NGM_HCI_COOKIE ;
 int NGM_HCI_SYNC_CON_QUEUE ;
 scalar_t__ NG_HCI_LINK_SCO ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int *,int ) ;

__attribute__((used)) static int
sync_con_queue(ng_hci_unit_p unit, ng_hci_unit_con_p con, int completed)
{
 hook_p hook = ((void*)0);
 struct ng_mesg *msg = ((void*)0);
 ng_hci_sync_con_queue_ep *state = ((void*)0);
 int error;

 hook = (con->link_type != NG_HCI_LINK_SCO)? unit->acl : unit->sco;
 if (hook == ((void*)0) || NG_HOOK_NOT_VALID(hook))
  return (ENOTCONN);

 NG_MKMESSAGE(msg, NGM_HCI_COOKIE, NGM_HCI_SYNC_CON_QUEUE,
  sizeof(*state), M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 state = (ng_hci_sync_con_queue_ep *)(msg->data);
 state->con_handle = con->con_handle;
 state->completed = completed;

 NG_SEND_MSG_HOOK(error, unit->node, msg, hook, 0);

 return (error);
}
