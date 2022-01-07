
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
struct ng_deflate_stats {int dummy; } ;
struct ng_deflate_config {int windowBits; int enable; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_10__ {int msg; int * next_in; } ;
struct TYPE_9__ {int stats; int ctrlnode; int seqnum; struct ng_deflate_config cfg; TYPE_3__ cx; int compress; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int) ;
 int LOG_NOTICE ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NGI_RETADDR (int ) ;


 scalar_t__ NGM_DEFLATE_COOKIE ;



 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_OK ;
 int bcopy (int *,scalar_t__,int) ;
 int bzero (int *,int) ;
 int deflateEnd (TYPE_3__*) ;
 int deflateInit2 (TYPE_3__*,int ,int ,int,int,int ) ;
 int inflateEnd (TYPE_3__*) ;
 int inflateInit2 (TYPE_3__*,int) ;
 int log (int ,char*,int,int ) ;
 int ng_deflate_reset_req (int ) ;

__attribute__((used)) static int
ng_deflate_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);

 if (msg->header.typecookie != NGM_DEFLATE_COOKIE)
  ERROUT(EINVAL);

 switch (msg->header.cmd) {
 case 131:
     {
  struct ng_deflate_config *const cfg
      = (struct ng_deflate_config *)msg->data;


  if (msg->header.arglen != sizeof(*cfg))
   ERROUT(EINVAL);
  if (cfg->enable) {
      if (cfg->windowBits < 8 || cfg->windowBits > 15)
   ERROUT(EINVAL);
  } else
      cfg->windowBits = 0;


  if (priv->cfg.enable) {
   if (priv->compress)
    deflateEnd(&priv->cx);
   else
    inflateEnd(&priv->cx);
   priv->cfg.enable = 0;
  }


  priv->cfg = *cfg;

  if (priv->cfg.enable) {
   priv->cx.next_in = ((void*)0);
   int res;
   if (priv->compress) {
    if ((res = deflateInit2(&priv->cx,
        Z_DEFAULT_COMPRESSION, Z_DEFLATED,
        -cfg->windowBits, 8,
        Z_DEFAULT_STRATEGY)) != Z_OK) {
     log(LOG_NOTICE,
         "deflateInit2: error %d, %s\n",
         res, priv->cx.msg);
     priv->cfg.enable = 0;
     ERROUT(ENOMEM);
    }
   } else {
    if ((res = inflateInit2(&priv->cx,
        -cfg->windowBits)) != Z_OK) {
     log(LOG_NOTICE,
         "inflateInit2: error %d, %s\n",
         res, priv->cx.msg);
     priv->cfg.enable = 0;
     ERROUT(ENOMEM);
    }
   }
  }


  priv->seqnum = 0;


  priv->ctrlnode = NGI_RETADDR(item);
  break;
     }

 case 128:
  ng_deflate_reset_req(node);
  break;

 case 129:
 case 132:
 case 130:

  if (msg->header.cmd != 132) {
   NG_MKRESPONSE(resp, msg,
       sizeof(struct ng_deflate_stats), M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);
   bcopy(&priv->stats, resp->data,
       sizeof(struct ng_deflate_stats));
  }


  if (msg->header.cmd != 129)
   bzero(&priv->stats,
       sizeof(struct ng_deflate_stats));
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
