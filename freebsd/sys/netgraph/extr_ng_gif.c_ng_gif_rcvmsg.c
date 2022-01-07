
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int typecookie; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_7__ {TYPE_2__* ifp; } ;
struct TYPE_6__ {int if_index; int if_xname; } ;


 int EINVAL ;
 int ENOMEM ;
 int IFNAMSIZ ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;



 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int strlcpy (scalar_t__,int ,int) ;

__attribute__((used)) static int
ng_gif_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 130:
  switch (msg->header.cmd) {
  case 128:
   NG_MKRESPONSE(resp, msg, IFNAMSIZ, M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   strlcpy(resp->data, priv->ifp->if_xname, IFNAMSIZ);
   break;
  case 129:
   NG_MKRESPONSE(resp, msg, sizeof(u_int32_t), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *((u_int32_t *)resp->data) = priv->ifp->if_index;
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
 return (error);
}
