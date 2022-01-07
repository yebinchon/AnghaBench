
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sscop_param {int dummy; } ;
struct priv {int enabled; int flow; int sscop; int stats; int * lower; int * upper; } ;
struct ng_sscop_setparam_resp {int mask; int error; } ;
struct ng_sscop_setparam {int param; int mask; } ;
struct TYPE_2__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef int * hook_p ;


 int EBUSY ;
 int EINVAL ;
 int EISCONN ;
 int ENOMEM ;
 int ENOTCONN ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int NG_TEXTRESPONSE ;
 int flow_lower (int ,struct ng_mesg*) ;
 int flow_upper (int ,struct ng_mesg*) ;
 int memset (int *,int ,int) ;
 int sscop_getdebug (int ) ;
 int sscop_getparam (int ,struct sscop_param*) ;
 int sscop_getstate (int ) ;
 int sscop_reset (int ) ;
 int sscop_setdebug (int ,int ) ;
 int sscop_setparam (int ,int *,int *) ;
 int text_status (int ,struct priv*,char*,int) ;

__attribute__((used)) static int
ng_sscop_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct priv *priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 struct ng_mesg *msg;
 int error = 0;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {

   case 137:
  switch (msg->header.cmd) {

    case 128:
   NG_MKRESPONSE(resp, msg, NG_TEXTRESPONSE, M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }

   resp->header.arglen = text_status(node, priv,
       (char *)resp->data, resp->header.arglen) + 1;
   break;

    default:
   error = EINVAL;
   break;
  }
  break;

   case 138:
  if (priv->enabled && lasthook != ((void*)0)) {
   if (lasthook == priv->upper)
    error = flow_upper(node, msg);
   else if (lasthook == priv->lower)
    error = flow_lower(node, msg);
  }
  break;

   case 136:
  switch (msg->header.cmd) {

    case 132:
      {
   struct sscop_param *p;

   NG_MKRESPONSE(resp, msg, sizeof(*p), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   p = (struct sscop_param *)resp->data;
   sscop_getparam(priv->sscop, p);
   break;
      }

    case 129:
      {
   struct ng_sscop_setparam *arg;
   struct ng_sscop_setparam_resp *p;

   if (msg->header.arglen != sizeof(*arg)) {
    error = EINVAL;
    break;
   }
   if (priv->enabled) {
    error = EISCONN;
    break;
   }
   arg = (struct ng_sscop_setparam *)msg->data;
   NG_MKRESPONSE(resp, msg, sizeof(*p), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   p = (struct ng_sscop_setparam_resp *)resp->data;
   p->mask = arg->mask;
   p->error = sscop_setparam(priv->sscop,
       &arg->param, &p->mask);
   break;
      }

    case 134:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   if (priv->enabled) {
    error = EBUSY;
    break;
   }
   priv->enabled = 1;
   priv->flow = 1;
   memset(&priv->stats, 0, sizeof(priv->stats));
   break;

    case 135:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   if (!priv->enabled) {
    error = ENOTCONN;
    break;
   }
   priv->enabled = 0;
   sscop_reset(priv->sscop);
   break;

    case 133:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   NG_MKRESPONSE(resp, msg, sizeof(u_int32_t), M_NOWAIT);
   if(resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *(u_int32_t *)resp->data = sscop_getdebug(priv->sscop);
   break;

    case 130:
   if (msg->header.arglen != sizeof(u_int32_t)) {
    error = EINVAL;
    break;
   }
   sscop_setdebug(priv->sscop, *(u_int32_t *)msg->data);
   break;

    case 131:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   NG_MKRESPONSE(resp, msg, sizeof(u_int32_t), M_NOWAIT);
   if(resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *(u_int32_t *)resp->data =
       priv->enabled ? (sscop_getstate(priv->sscop) + 1)
                     : 0;
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
