
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct ng_async_stat {int dummy; } ;
struct ng_async_cfg {int enabled; int amru; int smru; } ;
typedef TYPE_2__* sc_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {struct ng_async_cfg cfg; int slen; void* amode; int * sbuf; int * abuf; struct ng_async_stat stats; } ;


 int ASYNC_BUF_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int ) ;
 void* MODE_HUNT ;
 int M_NETGRAPH_ASYNC ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;





 int NG_ASYNC_MAX_MRU ;
 int NG_ASYNC_MIN_MRU ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int SYNC_BUF_SIZE (int ) ;
 int bzero (struct ng_async_stat*,int) ;
 int free (int *,int ) ;
 int * malloc (int ,int ,int ) ;

__attribute__((used)) static int
nga_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const sc_p sc = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 128:
  switch (msg->header.cmd) {
  case 130:
   NG_MKRESPONSE(resp, msg, sizeof(sc->stats), M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);
   *((struct ng_async_stat *) resp->data) = sc->stats;
   break;
  case 132:
   bzero(&sc->stats, sizeof(sc->stats));
   break;
  case 129:
      {
   struct ng_async_cfg *const cfg =
    (struct ng_async_cfg *) msg->data;
   u_char *buf;

   if (msg->header.arglen != sizeof(*cfg))
    ERROUT(EINVAL);
   if (cfg->amru < NG_ASYNC_MIN_MRU
       || cfg->amru > NG_ASYNC_MAX_MRU
       || cfg->smru < NG_ASYNC_MIN_MRU
       || cfg->smru > NG_ASYNC_MAX_MRU)
    ERROUT(EINVAL);
   cfg->enabled = !!cfg->enabled;
   if (cfg->smru > sc->cfg.smru) {
    buf = malloc(ASYNC_BUF_SIZE(cfg->smru),
        M_NETGRAPH_ASYNC, M_NOWAIT);
    if (!buf)
     ERROUT(ENOMEM);
    free(sc->abuf, M_NETGRAPH_ASYNC);
    sc->abuf = buf;
   }
   if (cfg->amru > sc->cfg.amru) {
    buf = malloc(SYNC_BUF_SIZE(cfg->amru),
        M_NETGRAPH_ASYNC, M_NOWAIT);
    if (!buf)
     ERROUT(ENOMEM);
    free(sc->sbuf, M_NETGRAPH_ASYNC);
    sc->sbuf = buf;
    sc->amode = MODE_HUNT;
    sc->slen = 0;
   }
   if (!cfg->enabled) {
    sc->amode = MODE_HUNT;
    sc->slen = 0;
   }
   sc->cfg = *cfg;
   break;
      }
  case 131:
   NG_MKRESPONSE(resp, msg, sizeof(sc->cfg), M_NOWAIT);
   if (!resp)
    ERROUT(ENOMEM);
   *((struct ng_async_cfg *) resp->data) = sc->cfg;
   break;
  default:
   ERROUT(EINVAL);
  }
  break;
 default:
  ERROUT(EINVAL);
 }
done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
