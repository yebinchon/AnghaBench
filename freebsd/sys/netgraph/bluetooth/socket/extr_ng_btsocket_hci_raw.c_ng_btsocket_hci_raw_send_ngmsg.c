
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_mesg {int data; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int NGM_HCI_COOKIE ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int,int,int ) ;
 int NG_SEND_MSG_PATH (int,int ,struct ng_mesg*,char*,int ) ;
 int bcopy (void*,int ,int) ;
 int ng_btsocket_hci_raw_node ;

__attribute__((used)) static int
ng_btsocket_hci_raw_send_ngmsg(char *path, int cmd, void *arg, int arglen)
{
 struct ng_mesg *msg = ((void*)0);
 int error = 0;

 NG_MKMESSAGE(msg, NGM_HCI_COOKIE, cmd, arglen, M_NOWAIT);
 if (msg == ((void*)0))
  return (ENOMEM);

 if (arg != ((void*)0) && arglen > 0)
  bcopy(arg, msg->data, arglen);

 NG_SEND_MSG_PATH(error, ng_btsocket_hci_raw_node, msg, path, 0);

 return (error);
}
