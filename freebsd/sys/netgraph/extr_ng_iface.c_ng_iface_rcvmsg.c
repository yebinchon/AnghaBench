
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int typecookie; int cmd; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
struct ifnet {int if_flags; int if_index; int if_xname; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {struct ifnet* ifp; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int IFF_BROADCAST ;
 int IFF_POINTOPOINT ;
 int IFF_UP ;
 int IFNAMSIZ ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int if_link_state_change (struct ifnet* const,int ) ;
 int strlcpy (scalar_t__,int ,int) ;

__attribute__((used)) static int
ng_iface_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ifnet *const ifp = priv->ifp;
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 133:
  switch (msg->header.cmd) {
  case 131:
   NG_MKRESPONSE(resp, msg, IFNAMSIZ, M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   strlcpy(resp->data, ifp->if_xname, IFNAMSIZ);
   break;

  case 130:
  case 134:
      {


   if ((ifp->if_flags & IFF_UP) != 0)
    return (EBUSY);


   switch (msg->header.cmd) {
   case 130:
    ifp->if_flags |= IFF_POINTOPOINT;
    ifp->if_flags &= ~IFF_BROADCAST;
    break;
   case 134:
    ifp->if_flags &= ~IFF_POINTOPOINT;
    ifp->if_flags |= IFF_BROADCAST;
    break;
   }
   break;
      }

  case 132:
   NG_MKRESPONSE(resp, msg, sizeof(uint32_t), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *((uint32_t *)resp->data) = priv->ifp->if_index;
   break;

  default:
   error = EINVAL;
   break;
  }
  break;
 case 135:
  switch (msg->header.cmd) {
  case 128:
   if_link_state_change(ifp, LINK_STATE_UP);
   break;
  case 129:
   if_link_state_change(ifp, LINK_STATE_DOWN);
   break;
  default:
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
