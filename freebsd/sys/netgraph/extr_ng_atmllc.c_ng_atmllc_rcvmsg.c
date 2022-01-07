
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;


 int NGF_RESP ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;

__attribute__((used)) static int
ng_atmllc_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct ng_mesg *msg;
 int error;

 error = 0;
 NGI_GET_MSG(item, msg);
 msg->header.flags |= NGF_RESP;
 NG_RESPOND_MSG(error, node, item, msg);
 return (error);
}
