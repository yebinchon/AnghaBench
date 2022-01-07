
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* xxx_p ;
typedef int u_int32_t ;
struct ngxxxstat {int packets_out; int packets_in; } ;
struct TYPE_4__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {int flags; int packets_out; int packets_in; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;



 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;

__attribute__((used)) static int
ng_xxx_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const xxx_p xxxp = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {
 case 130:
  switch (msg->header.cmd) {
  case 129:
      {
   struct ngxxxstat *stats;

   NG_MKRESPONSE(resp, msg, sizeof(*stats), M_NOWAIT);
   if (!resp) {
    error = ENOMEM;
    break;
   }
   stats = (struct ngxxxstat *) resp->data;
   stats->packets_in = xxxp->packets_in;
   stats->packets_out = xxxp->packets_out;
   break;
      }
  case 128:
   if (msg->header.arglen != sizeof(u_int32_t)) {
    error = EINVAL;
    break;
   }
   xxxp->flags = *((u_int32_t *) msg->data);
   break;
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
 return(error);
}
