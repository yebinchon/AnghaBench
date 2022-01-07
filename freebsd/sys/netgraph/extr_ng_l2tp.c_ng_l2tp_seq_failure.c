
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_mesg {int dummy; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_3__ {int ftarget; int node; } ;


 int M_NOWAIT ;
 int NGM_L2TP_ACK_FAILURE ;
 int NGM_L2TP_COOKIE ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int ,int ) ;
 int NG_SEND_MSG_ID (int,int ,struct ng_mesg*,int ,int ) ;

__attribute__((used)) static void
ng_l2tp_seq_failure(priv_p priv)
{
 struct ng_mesg *msg;
 int error;

 NG_MKMESSAGE(msg, NGM_L2TP_COOKIE, NGM_L2TP_ACK_FAILURE, 0, M_NOWAIT);
 if (msg == ((void*)0))
  return;
 NG_SEND_MSG_ID(error, priv->node, msg, priv->ftarget, 0);
}
