
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ng_tcpmss_hookstat {int dummy; } ;
struct ng_tcpmss_config {char* inHook; char* outHook; int maxMSS; } ;
struct TYPE_6__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef TYPE_2__* hpriv_p ;
typedef int * hook_p ;
struct TYPE_8__ {int maxMSS; } ;
struct TYPE_7__ {TYPE_3__ stats; int * outHook; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ERROUT (int) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;





 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_HOOKSIZ ;
 TYPE_2__* NG_HOOK_PRIVATE (int *) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (TYPE_3__*,scalar_t__,int) ;
 int bzero (TYPE_3__*,int) ;
 int * ng_findhook (int ,char*) ;

__attribute__((used)) static int
ng_tcpmss_rcvmsg
(node_p node, item_p item, hook_p lasthook)
{
 struct ng_mesg *msg, *resp = ((void*)0);
 int error = 0;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {
 case 130:
  switch (msg->header.cmd) {
  case 128:
  case 132:
  case 129:
      {
   hook_p hook;
   hpriv_p priv;


   if (msg->header.arglen != NG_HOOKSIZ)
    ERROUT(EINVAL);


   hook = ng_findhook(node, (char *)msg->data);
   if (hook == ((void*)0))
    ERROUT(ENOENT);

   priv = NG_HOOK_PRIVATE(hook);


   if (msg->header.cmd != 132) {
    NG_MKRESPONSE(resp, msg,
        sizeof(struct ng_tcpmss_hookstat), M_NOWAIT);
    if (resp == ((void*)0))
     ERROUT(ENOMEM);
    bcopy(&priv->stats, resp->data,
        sizeof(struct ng_tcpmss_hookstat));
   }

   if (msg->header.cmd != 128)
    bzero(&priv->stats,
        sizeof(struct ng_tcpmss_hookstat));
   break;
      }
  case 131:
      {
   struct ng_tcpmss_config *set;
   hook_p in, out;
   hpriv_p priv;


   if (msg->header.arglen !=
       sizeof(struct ng_tcpmss_config))
    ERROUT(EINVAL);

   set = (struct ng_tcpmss_config *)msg->data;
   in = ng_findhook(node, set->inHook);
   out = ng_findhook(node, set->outHook);
   if (in == ((void*)0) || out == ((void*)0))
    ERROUT(ENOENT);


   priv = NG_HOOK_PRIVATE(in);
   priv->outHook = out;
   priv->stats.maxMSS = set->maxMSS;

   break;
       }
  default:
   error = EINVAL;
   break;
  }
  break;
 default:
  error = EINVAL;
  break;
 }

done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);

 return (error);
}
