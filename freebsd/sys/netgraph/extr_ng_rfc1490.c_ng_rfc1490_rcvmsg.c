
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ng_rfc1490_encap_t {int name; int method; } ;
struct TYPE_4__ {scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {struct ng_rfc1490_encap_t const* enc; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 scalar_t__ NGM_RFC1490_COOKIE ;


 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int ,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 struct ng_rfc1490_encap_t* ng_rfc1490_encaps ;
 int strlcpy (char*,int ,int ) ;
 size_t strlen (int ) ;
 int strncmp (int ,char*,size_t) ;

__attribute__((used)) static int
ng_rfc1490_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *msg;
 struct ng_mesg *resp = ((void*)0);
 int error = 0;

 NGI_GET_MSG(item, msg);

 if (msg->header.typecookie == NGM_RFC1490_COOKIE) {
  switch (msg->header.cmd) {
  case 128:
  {
   const struct ng_rfc1490_encap_t *enc;
   char *s;
   size_t len;

   if (msg->header.arglen == 0)
    ERROUT(EINVAL);

   s = (char *)msg->data;
   len = msg->header.arglen - 1;


   for (enc = ng_rfc1490_encaps; enc->method != 0; enc++ )
    if ((strlen(enc->name) == len) &&
        !strncmp(enc->name, s, len))
     break;

   if (enc->method != 0)
    priv->enc = enc;
   else
    error = EINVAL;
   break;
  }
  case 129:

   NG_MKRESPONSE(resp, msg, strlen(priv->enc->name) + 1, M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);

   strlcpy((char *)resp->data, priv->enc->name,
       strlen(priv->enc->name) + 1);
   break;

  default:
   error = EINVAL;
   break;
  }
 } else
  error = EINVAL;

done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
