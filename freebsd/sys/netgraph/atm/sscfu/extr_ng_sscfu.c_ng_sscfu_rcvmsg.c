
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct priv {int enabled; int sscf; } ;
struct ng_sscfu_getdefparam {int param; int mask; } ;
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
 int sscfu_getdebug (int ) ;
 int sscfu_getdefparam (int *) ;
 int sscfu_getstate (int ) ;
 int sscfu_reset (int ) ;
 int sscfu_setdebug (int ,int ) ;
 int text_status (int ,struct priv*,char*,int) ;

__attribute__((used)) static int
ng_sscfu_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct priv *priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 struct ng_mesg *msg;
 int error = 0;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {

   case 136:
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

   case 135:
  switch (msg->header.cmd) {

    case 131:
      {
   struct ng_sscfu_getdefparam *p;

   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   NG_MKRESPONSE(resp, msg, sizeof(*p), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   p = (struct ng_sscfu_getdefparam *)resp->data;
   p->mask = sscfu_getdefparam(&p->param);
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
   sscfu_reset(priv->sscf);
   break;

    case 130:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   NG_MKRESPONSE(resp, msg, sizeof(uint32_t), M_NOWAIT);
   if(resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *(uint32_t *)resp->data =
       priv->enabled ? (sscfu_getstate(priv->sscf) + 1)
                     : 0;
   break;

    case 132:
   if (msg->header.arglen != 0) {
    error = EINVAL;
    break;
   }
   NG_MKRESPONSE(resp, msg, sizeof(uint32_t), M_NOWAIT);
   if(resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   *(uint32_t *)resp->data = sscfu_getdebug(priv->sscf);
   break;

    case 129:
   if (msg->header.arglen != sizeof(uint32_t)) {
    error = EINVAL;
    break;
   }
   sscfu_setdebug(priv->sscf, *(uint32_t *)msg->data);
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
