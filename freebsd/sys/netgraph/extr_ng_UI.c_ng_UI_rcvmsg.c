
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ typecookie; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef scalar_t__ hook_p ;
struct TYPE_5__ {scalar_t__ downlink; scalar_t__ uplink; } ;


 int EINVAL ;
 struct ng_mesg* NGI_MSG (int ) ;
 scalar_t__ NGM_FLOW_COOKIE ;
 int NG_FREE_ITEM (int ) ;
 int NG_FWD_ITEM_HOOK (int,int ,scalar_t__) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static int
ng_UI_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 int error;
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *msg;

 msg = NGI_MSG(item);
 if ((msg->header.typecookie == NGM_FLOW_COOKIE) && lasthook) {
  if (lasthook == priv->downlink) {
   if (priv->uplink) {
    NG_FWD_ITEM_HOOK(error, item, priv->uplink);
    return (error);
   }
  } else {
   if (priv->downlink) {
    NG_FWD_ITEM_HOOK(error, item, priv->downlink);
    return (error);
   }
  }
 }

 NG_FREE_ITEM(item);
 return (EINVAL);
}
