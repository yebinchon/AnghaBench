
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int token; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef TYPE_4__* ng_btsocket_l2cap_raw_pcb_p ;
struct TYPE_10__ {int cmd; } ;
struct TYPE_12__ {int data; TYPE_3__ header; } ;
struct TYPE_11__ {TYPE_6__* msg; int token; int pcb_mtx; TYPE_2__* rt; } ;
struct TYPE_9__ {int hook; } ;


 int EINVAL ;
 int ENOMEM ;
 int MA_OWNED ;
 int M_NOWAIT ;
 int NGM_L2CAP_COOKIE ;
 int NG_FREE_MSG (TYPE_6__*) ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int,int ,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int ,int ) ;
 int PCATCH ;
 int PZERO ;
 int bcopy (int ,void*,int) ;
 int hz ;
 int msleep (TYPE_6__**,int *,int,char*,int) ;
 int mtx_assert (int *,int ) ;
 int ng_btsocket_l2cap_raw_get_token (int *) ;
 int ng_btsocket_l2cap_raw_ioctl_timeout ;
 int ng_btsocket_l2cap_raw_node ;

__attribute__((used)) static int
ng_btsocket_l2cap_raw_send_sync_ngmsg(ng_btsocket_l2cap_raw_pcb_p pcb,
  int cmd, void *rsp, int rsplen)
{
 struct ng_mesg *msg = ((void*)0);
 int error = 0;

 mtx_assert(&pcb->pcb_mtx, MA_OWNED);

 NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE, cmd, 0, M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 ng_btsocket_l2cap_raw_get_token(&msg->header.token);
 pcb->token = msg->header.token;
 pcb->msg = ((void*)0);

 NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_raw_node, msg,
  pcb->rt->hook, 0);
 if (error != 0) {
  pcb->token = 0;
  return (error);
 }

 error = msleep(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
   ng_btsocket_l2cap_raw_ioctl_timeout * hz);
 pcb->token = 0;

 if (error != 0)
  return (error);

 if (pcb->msg != ((void*)0) && pcb->msg->header.cmd == cmd)
  bcopy(pcb->msg->data, rsp, rsplen);
 else
  error = EINVAL;

 NG_FREE_MSG(pcb->msg);

 return (0);
}
