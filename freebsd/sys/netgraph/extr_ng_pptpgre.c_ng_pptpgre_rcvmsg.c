
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint16_t ;
struct ng_pptpgre_conf {size_t cid; } ;
struct TYPE_10__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef TYPE_3__* hpriv_p ;
typedef int hook_p ;
struct TYPE_12__ {struct ng_pptpgre_conf conf; } ;
struct TYPE_11__ {struct ng_pptpgre_conf stats; TYPE_3__ uppersess; int * sesshash; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int) ;
 int LIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int LIST_REMOVE (TYPE_3__*,int ) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;






 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 size_t SESSHASH (size_t) ;
 int bcopy (struct ng_pptpgre_conf*,scalar_t__,int) ;
 int bzero (struct ng_pptpgre_conf*,int) ;
 TYPE_3__* ng_pptpgre_find_session (TYPE_2__* const,size_t) ;
 int ng_pptpgre_reset (TYPE_3__*) ;
 int sessions ;

__attribute__((used)) static int
ng_pptpgre_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 132:
  switch (msg->header.cmd) {
  case 128:
      {
   struct ng_pptpgre_conf *const newConf =
    (struct ng_pptpgre_conf *) msg->data;
   hpriv_p hpriv;
   uint16_t hash;


   if (msg->header.arglen != sizeof(*newConf))
    ERROUT(EINVAL);

   hpriv = ng_pptpgre_find_session(priv, newConf->cid);

   if (hpriv == ((void*)0)) {
    hpriv = &priv->uppersess;
    LIST_REMOVE(hpriv, sessions);
    hash = SESSHASH(newConf->cid);
    LIST_INSERT_HEAD(&priv->sesshash[hash], hpriv,
        sessions);
   }
   ng_pptpgre_reset(hpriv);
   hpriv->conf = *newConf;
   break;
      }
  case 130:
      {
   hpriv_p hpriv;

   if (msg->header.arglen == 2) {

        hpriv = ng_pptpgre_find_session(priv,
        *((uint16_t *)msg->data));
    if (hpriv == ((void*)0))
     ERROUT(EINVAL);
   } else if (msg->header.arglen == 0) {

    hpriv = &priv->uppersess;
   } else
    ERROUT(EINVAL);
   NG_MKRESPONSE(resp, msg, sizeof(hpriv->conf), M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);
   bcopy(&hpriv->conf, resp->data, sizeof(hpriv->conf));
   break;
      }
  case 129:
  case 133:
  case 131:
      {
   if (msg->header.cmd != 133) {
    NG_MKRESPONSE(resp, msg,
        sizeof(priv->stats), M_NOWAIT);
    if (resp == ((void*)0))
     ERROUT(ENOMEM);
    bcopy(&priv->stats,
        resp->data, sizeof(priv->stats));
   }
   if (msg->header.cmd != 129)
    bzero(&priv->stats, sizeof(priv->stats));
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
