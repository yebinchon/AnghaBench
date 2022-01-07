
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sppp {int dummy; } ;
struct TYPE_5__ {int typecookie; int cmd; } ;
struct ng_mesg {int data; TYPE_1__ header; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_7__ {int if_xname; } ;
struct TYPE_6__ {int ifp; } ;


 int EINVAL ;
 int ENOMEM ;
 int IFNAMSIZ ;
 struct sppp* IFP2SP (int ) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;


 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int ,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 TYPE_3__* SP2IFP (struct sppp* const) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int
ng_sppp_rcvmsg (node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE (node);
 struct ng_mesg *msg = ((void*)0);
 struct ng_mesg *resp = ((void*)0);
 struct sppp *const pp = IFP2SP(priv->ifp);
 int error = 0;

 NGI_GET_MSG (item, msg);
 switch (msg->header.typecookie) {
 case 129:
  switch (msg->header.cmd) {
  case 128:
   NG_MKRESPONSE (resp, msg, IFNAMSIZ, M_NOWAIT);
   if (!resp) {
    error = ENOMEM;
    break;
   }
   strlcpy(resp->data, SP2IFP(pp)->if_xname, IFNAMSIZ);
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
 NG_RESPOND_MSG (error, node, item, resp);
 NG_FREE_MSG (msg);
 return (error);
}
