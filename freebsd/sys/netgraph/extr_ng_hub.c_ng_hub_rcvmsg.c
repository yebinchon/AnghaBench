
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ typecookie; scalar_t__ cmd; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {int persistent; } ;


 int EINVAL ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 scalar_t__ NGM_HUB_COOKIE ;
 scalar_t__ NGM_HUB_SET_PERSISTENT ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static int
ng_hub_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 if (msg->header.typecookie == NGM_HUB_COOKIE &&
     msg->header.cmd == NGM_HUB_SET_PERSISTENT) {
  priv->persistent = 1;
 } else {
  error = EINVAL;
 }

 NG_FREE_MSG(msg);
 return (error);
}
