
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ng_pred1_stats {int dummy; } ;
struct ng_pred1_config {int dummy; } ;
struct TYPE_4__ {scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {int stats; int ctrlnode; struct ng_pred1_config cfg; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NGI_RETADDR (int ) ;


 scalar_t__ NGM_PRED1_COOKIE ;



 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int Pred1Init (int ) ;
 int bcopy (int *,scalar_t__,int) ;
 int bzero (int *,int) ;

__attribute__((used)) static int
ng_pred1_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);

 if (msg->header.typecookie != NGM_PRED1_COOKIE)
  ERROUT(EINVAL);

 switch (msg->header.cmd) {
 case 131:
     {
  struct ng_pred1_config *const cfg =
      (struct ng_pred1_config *)msg->data;


  if (msg->header.arglen != sizeof(*cfg))
   ERROUT(EINVAL);


  priv->cfg = *cfg;


  priv->ctrlnode = NGI_RETADDR(item);


  Pred1Init(node);

  break;
     }
 case 128:
  Pred1Init(node);
  break;

 case 129:
 case 132:
 case 130:
     {

  if (msg->header.cmd != 132) {
   NG_MKRESPONSE(resp, msg,
       sizeof(struct ng_pred1_stats), M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);
   bcopy(&priv->stats, resp->data,
       sizeof(struct ng_pred1_stats));
  }

  if (msg->header.cmd != 129)
   bzero(&priv->stats, sizeof(struct ng_pred1_stats));
  break;
     }

 default:
  error = EINVAL;
  break;
 }
done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
