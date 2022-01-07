
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef size_t u_int ;
struct uni_config {int dummy; } ;
struct priv {int enabled; int uni; } ;
struct ngm_uni_config_mask {int option_mask; int popt_mask; int mask; } ;
struct ngm_uni_set_config {int config; struct ngm_uni_config_mask mask; } ;
struct ngm_uni_debug {int * level; } ;
struct TYPE_2__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;


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
 size_t UNI_MAXFACILITY ;
 int text_status (int ,struct priv*,char*,int) ;
 int uni_get_config (int ,struct uni_config*) ;
 int uni_get_debug (int ,size_t) ;
 int uni_getcustate (int ) ;
 int uni_reset (int ) ;
 int uni_set_config (int ,int *,int *,int *,int *) ;
 int uni_set_debug (int ,size_t,int ) ;

__attribute__((used)) static int
ng_uni_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct priv *priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 struct ng_mesg *msg;
 int error = 0;
 u_int i;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {

   case 137:
  switch (msg->header.cmd) {

    case 136:
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

   case 135:
  switch (msg->header.cmd) {

    case 129:
      {
   struct ngm_uni_debug *arg;

   if (msg->header.arglen > sizeof(*arg)) {
    error = EINVAL;
    break;
   }
   arg = (struct ngm_uni_debug *)msg->data;
   for (i = 0; i < UNI_MAXFACILITY; i++)
    uni_set_debug(priv->uni, i, arg->level[i]);
   break;
      }

    case 132:
      {
   struct ngm_uni_debug *arg;

   NG_MKRESPONSE(resp, msg, sizeof(*arg), M_NOWAIT);
   if(resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   arg = (struct ngm_uni_debug *)resp->data;
   for (i = 0; i < UNI_MAXFACILITY; i++)
    arg->level[i] = uni_get_debug(priv->uni, i);
   break;
      }

    case 130:
      {
   struct uni_config *config;

   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   NG_MKRESPONSE(resp, msg, sizeof(*config), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   config = (struct uni_config *)resp->data;
   uni_get_config(priv->uni, config);

   break;
      }

    case 128:
      {
   struct ngm_uni_set_config *arg;
   struct ngm_uni_config_mask *mask;

   if (msg->header.arglen != sizeof(*arg)) {
    error = EINVAL;
    break;
   }
   arg = (struct ngm_uni_set_config *)msg->data;

   NG_MKRESPONSE(resp, msg, sizeof(*mask), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   mask = (struct ngm_uni_config_mask *)resp->data;

   *mask = arg->mask;

   uni_set_config(priv->uni, &arg->config,
       &mask->mask, &mask->popt_mask, &mask->option_mask);

   break;
      }

    case 133:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   if (priv->enabled) {
    error = EISCONN;
    break;
   }
   priv->enabled = 1;
   break;

    case 134:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   if (!priv->enabled) {
    error = ENOTCONN;
    break;
   }
   priv->enabled = 0;
   uni_reset(priv->uni);
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
       priv->enabled ? (uni_getcustate(priv->uni) + 1)
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
