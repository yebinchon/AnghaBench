
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int16_t ;
struct TYPE_9__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; int * data; } ;
struct ng_l2tp_sess_config {int session_id; } ;
struct ng_l2tp_seq_config {void* xack; void* rack; void* nr; void* ns; } ;
struct ng_l2tp_config {int enabled; int match_id; int peer_id; int tunnel_id; } ;
typedef int session_id ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef TYPE_3__* hookpriv_p ;
typedef int hook_p ;
struct TYPE_11__ {int stats; struct ng_l2tp_sess_config conf; } ;
struct TYPE_10__ {int stats; struct ng_l2tp_config conf; int ftarget; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NGI_RETADDR (int ) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;
 void* htons (void*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 TYPE_3__* ng_l2tp_find_session (TYPE_2__* const,int ) ;
 int ng_l2tp_seq_adjust (TYPE_2__* const,struct ng_l2tp_config* const) ;
 int ng_l2tp_seq_set (TYPE_2__* const,struct ng_l2tp_seq_config* const) ;

__attribute__((used)) static int
ng_l2tp_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 struct ng_mesg *msg;
 int error = 0;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 137:
  switch (msg->header.cmd) {
  case 130:
      {
   struct ng_l2tp_config *const conf =
    (struct ng_l2tp_config *)msg->data;


   if (msg->header.arglen != sizeof(*conf)) {
    error = EINVAL;
    break;
   }
   conf->enabled = !!conf->enabled;
   conf->match_id = !!conf->match_id;
   if (priv->conf.enabled
       && ((priv->conf.tunnel_id != 0
          && conf->tunnel_id != priv->conf.tunnel_id)
         || ((priv->conf.peer_id != 0
          && conf->peer_id != priv->conf.peer_id)))) {
    error = EBUSY;
    break;
   }


   priv->ftarget = NGI_RETADDR(item);


   if ((error = ng_l2tp_seq_adjust(priv, conf)) != 0)
    break;


   priv->conf = *conf;
   break;
      }
  case 134:
      {
   struct ng_l2tp_config *conf;

   NG_MKRESPONSE(resp, msg, sizeof(*conf), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   conf = (struct ng_l2tp_config *)resp->data;
   *conf = priv->conf;
   break;
      }
  case 128:
      {
   struct ng_l2tp_sess_config *const conf =
       (struct ng_l2tp_sess_config *)msg->data;
   hookpriv_p hpriv;


   if (msg->header.arglen != sizeof(*conf)) {
    error = EINVAL;
    break;
   }


   hpriv = ng_l2tp_find_session(priv, conf->session_id);
   if (hpriv == ((void*)0)) {
    error = ENOENT;
    break;
   }


   hpriv->conf = *conf;
   break;
      }
  case 132:
      {
   struct ng_l2tp_sess_config *conf;
   u_int16_t session_id;
   hookpriv_p hpriv;


   if (msg->header.arglen != sizeof(session_id)) {
    error = EINVAL;
    break;
   }
   memcpy(&session_id, msg->data, 2);


   hpriv = ng_l2tp_find_session(priv, session_id);
   if (hpriv == ((void*)0)) {
    error = ENOENT;
    break;
   }


   NG_MKRESPONSE(resp, msg, sizeof(hpriv->conf), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   conf = (struct ng_l2tp_sess_config *)resp->data;
   *conf = hpriv->conf;
   break;
      }
  case 131:
  case 138:
  case 135:
      {
   if (msg->header.cmd != 138) {
    NG_MKRESPONSE(resp, msg,
        sizeof(priv->stats), M_NOWAIT);
    if (resp == ((void*)0)) {
     error = ENOMEM;
     break;
    }
    memcpy(resp->data,
        &priv->stats, sizeof(priv->stats));
   }
   if (msg->header.cmd != 131)
    memset(&priv->stats, 0, sizeof(priv->stats));
   break;
      }
  case 133:
  case 139:
  case 136:
      {
   uint16_t session_id;
   hookpriv_p hpriv;


   if (msg->header.arglen != sizeof(session_id)) {
    error = EINVAL;
    break;
   }
   bcopy(msg->data, &session_id, sizeof(uint16_t));


   hpriv = ng_l2tp_find_session(priv, session_id);
   if (hpriv == ((void*)0)) {
    error = ENOENT;
    break;
   }

   if (msg->header.cmd != 139) {
    NG_MKRESPONSE(resp, msg,
        sizeof(hpriv->stats), M_NOWAIT);
    if (resp == ((void*)0)) {
     error = ENOMEM;
     break;
    }
    bcopy(&hpriv->stats, resp->data,
     sizeof(hpriv->stats));
   }
   if (msg->header.cmd != 133)
    bzero(&hpriv->stats, sizeof(hpriv->stats));
   break;
      }
  case 129:
      {
   struct ng_l2tp_seq_config *const conf =
    (struct ng_l2tp_seq_config *)msg->data;


   if (msg->header.arglen != sizeof(*conf)) {
    error = EINVAL;
    break;
   }
   conf->ns = htons(conf->ns);
   conf->nr = htons(conf->nr);
   conf->rack = htons(conf->rack);
   conf->xack = htons(conf->xack);


   error = ng_l2tp_seq_set(priv, conf);
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


 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
