
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_char ;
struct sockaddr_dl {int sdl_len; int sdl_alen; void* sdl_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_11__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct ifmultiaddr {int dummy; } ;
struct epoch_tracker {int dummy; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_13__ {int if_index; int if_xname; } ;
struct TYPE_12__ {int promisc; int autoSrcAddr; TYPE_3__* ifp; } ;


 void* AF_LINK ;
 int EADDRINUSE ;
 int EINVAL ;
 int ENOMEM ;
 int ETHER_ADDR_LEN ;
 int IFNAMSIZ ;
 void* IF_LLADDR (TYPE_3__*) ;
 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int M_NOWAIT ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (void*,scalar_t__,int) ;
 int bzero (struct sockaddr_dl*,int) ;
 int if_addmulti (TYPE_3__*,struct sockaddr*,struct ifmultiaddr**) ;
 int if_delmulti (TYPE_3__*,struct sockaddr*) ;
 struct ifmultiaddr* if_findmulti (TYPE_3__*,struct sockaddr*) ;
 int if_setlladdr (TYPE_3__*,int*,int) ;
 int ifpromisc (TYPE_3__*,int) ;
 int ng_ether_detach (TYPE_3__*) ;
 int strlcpy (scalar_t__,int ,int) ;

__attribute__((used)) static int
ng_ether_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 138:
  switch (msg->header.cmd) {
  case 132:
   NG_MKRESPONSE(resp, msg, IFNAMSIZ, M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   strlcpy(resp->data, priv->ifp->if_xname, IFNAMSIZ);
   break;
  case 133:
   NG_MKRESPONSE(resp, msg, sizeof(u_int32_t), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *((u_int32_t *)resp->data) = priv->ifp->if_index;
   break;
  case 134:
   NG_MKRESPONSE(resp, msg, ETHER_ADDR_LEN, M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   bcopy(IF_LLADDR(priv->ifp),
       resp->data, ETHER_ADDR_LEN);
   break;
  case 129:
      {
   if (msg->header.arglen != ETHER_ADDR_LEN) {
    error = EINVAL;
    break;
   }
   error = if_setlladdr(priv->ifp,
       (u_char *)msg->data, ETHER_ADDR_LEN);
   break;
      }
  case 131:
   NG_MKRESPONSE(resp, msg, sizeof(u_int32_t), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *((u_int32_t *)resp->data) = priv->promisc;
   break;
  case 128:
      {
   u_char want;

   if (msg->header.arglen != sizeof(u_int32_t)) {
    error = EINVAL;
    break;
   }
   want = !!*((u_int32_t *)msg->data);
   if (want ^ priv->promisc) {
    if ((error = ifpromisc(priv->ifp, want)) != 0)
     break;
    priv->promisc = want;
   }
   break;
      }
  case 135:
   NG_MKRESPONSE(resp, msg, sizeof(u_int32_t), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *((u_int32_t *)resp->data) = priv->autoSrcAddr;
   break;
  case 130:
   if (msg->header.arglen != sizeof(u_int32_t)) {
    error = EINVAL;
    break;
   }
   priv->autoSrcAddr = !!*((u_int32_t *)msg->data);
   break;
  case 139:
      {
   struct sockaddr_dl sa_dl;
   struct epoch_tracker et;
   struct ifmultiaddr *ifma;

   if (msg->header.arglen != ETHER_ADDR_LEN) {
    error = EINVAL;
    break;
   }
   bzero(&sa_dl, sizeof(struct sockaddr_dl));
   sa_dl.sdl_len = sizeof(struct sockaddr_dl);
   sa_dl.sdl_family = AF_LINK;
   sa_dl.sdl_alen = ETHER_ADDR_LEN;
   bcopy((void *)msg->data, LLADDR(&sa_dl),
       ETHER_ADDR_LEN);







   NET_EPOCH_ENTER(et);
   ifma = if_findmulti(priv->ifp,
       (struct sockaddr *)&sa_dl);
   NET_EPOCH_EXIT(et);
   if (ifma != ((void*)0)) {
    error = EADDRINUSE;
   } else {
    error = if_addmulti(priv->ifp,
        (struct sockaddr *)&sa_dl, &ifma);
   }
   break;
      }
  case 137:
      {
   struct sockaddr_dl sa_dl;

   if (msg->header.arglen != ETHER_ADDR_LEN) {
    error = EINVAL;
    break;
   }
   bzero(&sa_dl, sizeof(struct sockaddr_dl));
   sa_dl.sdl_len = sizeof(struct sockaddr_dl);
   sa_dl.sdl_family = AF_LINK;
   sa_dl.sdl_alen = ETHER_ADDR_LEN;
   bcopy((void *)msg->data, LLADDR(&sa_dl),
       ETHER_ADDR_LEN);
   error = if_delmulti(priv->ifp,
       (struct sockaddr *)&sa_dl);
   break;
      }
  case 136:
   ng_ether_detach(priv->ifp);
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
