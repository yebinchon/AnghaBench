
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typecookie; int cmd; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;


 int EINVAL ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;

 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;

__attribute__((used)) static int
ng_gif_demux_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 128:
  switch (msg->header.cmd) {

  default:
   error = EINVAL;
   break;
  }
  break;
 default:
  error = EINVAL;
  break;
 }


 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
