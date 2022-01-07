
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; struct ng_checksum_config* data; } ;
struct ng_checksum_stats {int dummy; } ;
struct ng_checksum_config {int csum_flags; int csum_offload; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {struct ng_checksum_config stats; struct ng_checksum_config* conf; int dlt; } ;




 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int ) ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;

 scalar_t__ NGM_CHECKSUM_COOKIE ;






 int NG_CHECKSUM_CSUM_IPV4 ;
 int NG_CHECKSUM_CSUM_IPV6 ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (struct ng_checksum_config*,struct ng_checksum_config*,int) ;
 int bzero (struct ng_checksum_config*,int) ;
 int free (struct ng_checksum_config*,int ) ;
 struct ng_checksum_config* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_checksum_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_checksum_config *conf, *newconf;
 struct ng_mesg *msg;
 struct ng_mesg *resp = ((void*)0);
 int error = 0;

 NGI_GET_MSG(item, msg);

 if (msg->header.typecookie != NGM_CHECKSUM_COOKIE)
  ERROUT(EINVAL);

 switch (msg->header.cmd)
 {
  case 131:
   NG_MKRESPONSE(resp, msg, sizeof(uint8_t), M_WAITOK);

   if (resp == ((void*)0))
    ERROUT(ENOMEM);

   *((uint8_t *) resp->data) = priv->dlt;

   break;

  case 128:
   if (msg->header.arglen != sizeof(uint8_t))
    ERROUT(EINVAL);

   switch (*(uint8_t *) msg->data)
   {
    case 136:
    case 135:
     priv->dlt = *(uint8_t *) msg->data;
     break;

    default:
     ERROUT(EINVAL);
   }

   break;

  case 132:
   if (priv->conf == ((void*)0))
    ERROUT(0);

   NG_MKRESPONSE(resp, msg, sizeof(struct ng_checksum_config), M_WAITOK);

   if (resp == ((void*)0))
    ERROUT(ENOMEM);

   bcopy(priv->conf, resp->data, sizeof(struct ng_checksum_config));

   break;

  case 129:
   conf = (struct ng_checksum_config *) msg->data;

   if (msg->header.arglen != sizeof(struct ng_checksum_config))
    ERROUT(EINVAL);

   conf->csum_flags &= NG_CHECKSUM_CSUM_IPV4|NG_CHECKSUM_CSUM_IPV6;
   conf->csum_offload &= NG_CHECKSUM_CSUM_IPV4|NG_CHECKSUM_CSUM_IPV6;

   newconf = malloc(sizeof(struct ng_checksum_config), M_NETGRAPH, M_WAITOK|M_ZERO);

   bcopy(conf, newconf, sizeof(struct ng_checksum_config));

   if (priv->conf)
    free(priv->conf, M_NETGRAPH);

   priv->conf = newconf;

   break;

  case 130:
  case 134:
  case 133:
   if (msg->header.cmd != 134) {
    NG_MKRESPONSE(resp, msg, sizeof(struct ng_checksum_stats), M_WAITOK);

    if (resp == ((void*)0))
     ERROUT(ENOMEM);

    bcopy(&(priv->stats), resp->data, sizeof(struct ng_checksum_stats));
   }

   if (msg->header.cmd != 130)
    bzero(&(priv->stats), sizeof(struct ng_checksum_stats));

   break;

  default:
   ERROUT(EINVAL);
 }

done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);

 return (error);
}
