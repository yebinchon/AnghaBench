
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_mesg {int data; } ;
typedef int hook_p ;


 int ENOMEM ;
 int M_NOWAIT ;
 int NGM_L2CAP_COOKIE ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int,int,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int ,int ) ;
 int bcopy (void*,int ,int) ;
 int ng_btsocket_l2cap_raw_node ;

__attribute__((used)) static int
ng_btsocket_l2cap_raw_send_ngmsg(hook_p hook, int cmd, void *arg, int arglen)
{
 struct ng_mesg *msg = ((void*)0);
 int error = 0;

 NG_MKMESSAGE(msg, NGM_L2CAP_COOKIE, cmd, arglen, M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 if (arg != ((void*)0) && arglen > 0)
  bcopy(arg, msg->data, arglen);

 NG_SEND_MSG_HOOK(error, ng_btsocket_l2cap_raw_node, msg, hook, 0);

 return (error);
}
