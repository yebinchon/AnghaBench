
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint16_t ;
struct ngnf_show_header {int dummy; } ;
struct ng_netflow_v9info {int dummy; } ;
struct ng_netflow_settimeouts {int active_timeout; int inactive_timeout; } ;
struct ng_netflow_settemplate {int time; int packets; } ;
struct ng_netflow_setmtu {int mtu; } ;
struct ng_netflow_setifindex {size_t const iface; int index; } ;
struct ng_netflow_setdlt {size_t const iface; int dlt; } ;
struct ng_netflow_setconfig {size_t const iface; int conf; } ;
struct ng_netflow_info {int dummy; } ;
struct ng_netflow_ifinfo {int dummy; } ;
struct TYPE_8__ {int ifinfo_dlt; int conf; int ifinfo_index; } ;
struct ng_netflow_iface {TYPE_1__ info; int * hook; } ;
struct TYPE_9__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_2__ header; } ;
typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_10__ {int mtu; int templ_time; int templ_packets; struct ng_netflow_iface* ifaces; int nfinfo_act_t; int nfinfo_inact_t; } ;




 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int ) ;
 int MAX_MTU ;
 int MIN_MTU ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NGRESP_SIZE ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 size_t const NG_NETFLOW_MAXIFACES ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int memcpy (void*,void*,int) ;
 int ng_netflow_copyinfo (TYPE_3__* const,struct ng_netflow_info*) ;
 int ng_netflow_copyv9info (TYPE_3__* const,struct ng_netflow_v9info*) ;
 int ng_netflow_flow_show (TYPE_3__* const,struct ngnf_show_header*,struct ngnf_show_header*) ;

__attribute__((used)) static int
ng_netflow_rcvmsg (node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);


 switch (msg->header.typecookie) {
 case 138:
  switch (msg->header.cmd) {
  case 136:
      {
   struct ng_netflow_info *i;

   NG_MKRESPONSE(resp, msg, sizeof(struct ng_netflow_info),
       M_NOWAIT);
   i = (struct ng_netflow_info *)resp->data;
   ng_netflow_copyinfo(priv, i);

   break;
      }
  case 137:
      {
   struct ng_netflow_ifinfo *i;
   const uint16_t *index;

   if (msg->header.arglen != sizeof(uint16_t))
     ERROUT(EINVAL);

   index = (uint16_t *)msg->data;
   if (*index >= NG_NETFLOW_MAXIFACES)
    ERROUT(EINVAL);


   if (priv->ifaces[*index].hook == ((void*)0))
     ERROUT(EINVAL);

   NG_MKRESPONSE(resp, msg,
        sizeof(struct ng_netflow_ifinfo), M_NOWAIT);
   i = (struct ng_netflow_ifinfo *)resp->data;
   memcpy((void *)i, (void *)&priv->ifaces[*index].info,
       sizeof(priv->ifaces[*index].info));

   break;
      }
  case 134:
      {
   struct ng_netflow_setdlt *set;
   struct ng_netflow_iface *iface;

   if (msg->header.arglen !=
       sizeof(struct ng_netflow_setdlt))
    ERROUT(EINVAL);

   set = (struct ng_netflow_setdlt *)msg->data;
   if (set->iface >= NG_NETFLOW_MAXIFACES)
    ERROUT(EINVAL);
   iface = &priv->ifaces[set->iface];


   if (iface->hook == ((void*)0))
    ERROUT(EINVAL);

   switch (set->dlt) {
   case 140:
    iface->info.ifinfo_dlt = 140;
    break;
   case 139:
    iface->info.ifinfo_dlt = 139;
    break;
   default:
    ERROUT(EINVAL);
   }
   break;
      }
  case 133:
      {
   struct ng_netflow_setifindex *set;
   struct ng_netflow_iface *iface;

   if (msg->header.arglen !=
       sizeof(struct ng_netflow_setifindex))
    ERROUT(EINVAL);

   set = (struct ng_netflow_setifindex *)msg->data;
   if (set->iface >= NG_NETFLOW_MAXIFACES)
    ERROUT(EINVAL);
   iface = &priv->ifaces[set->iface];


   if (iface->hook == ((void*)0))
    ERROUT(EINVAL);

   iface->info.ifinfo_index = set->index;

   break;
      }
  case 130:
      {
   struct ng_netflow_settimeouts *set;

   if (msg->header.arglen !=
       sizeof(struct ng_netflow_settimeouts))
    ERROUT(EINVAL);

   set = (struct ng_netflow_settimeouts *)msg->data;

   priv->nfinfo_inact_t = set->inactive_timeout;
   priv->nfinfo_act_t = set->active_timeout;

   break;
      }
  case 135:
      {
   struct ng_netflow_setconfig *set;

   if (msg->header.arglen !=
       sizeof(struct ng_netflow_setconfig))
    ERROUT(EINVAL);

   set = (struct ng_netflow_setconfig *)msg->data;

   if (set->iface >= NG_NETFLOW_MAXIFACES)
    ERROUT(EINVAL);

   priv->ifaces[set->iface].info.conf = set->conf;

   break;
      }
  case 131:
      {
   struct ng_netflow_settemplate *set;

   if (msg->header.arglen !=
       sizeof(struct ng_netflow_settemplate))
    ERROUT(EINVAL);

   set = (struct ng_netflow_settemplate *)msg->data;

   priv->templ_packets = set->packets;
   priv->templ_time = set->time;

   break;
      }
  case 132:
      {
   struct ng_netflow_setmtu *set;

   if (msg->header.arglen !=
       sizeof(struct ng_netflow_setmtu))
    ERROUT(EINVAL);

   set = (struct ng_netflow_setmtu *)msg->data;
   if ((set->mtu < MIN_MTU) || (set->mtu > MAX_MTU))
    ERROUT(EINVAL);

   priv->mtu = set->mtu;

   break;
      }
  case 129:
   if (msg->header.arglen !=
       sizeof(struct ngnf_show_header))
    ERROUT(EINVAL);

   NG_MKRESPONSE(resp, msg, NGRESP_SIZE, M_NOWAIT);

   if (!resp)
    ERROUT(ENOMEM);

   error = ng_netflow_flow_show(priv,
       (struct ngnf_show_header *)msg->data,
       (struct ngnf_show_header *)resp->data);

   if (error)
    NG_FREE_MSG(resp);

   break;
  case 128:
      {
   struct ng_netflow_v9info *i;

   NG_MKRESPONSE(resp, msg,
       sizeof(struct ng_netflow_v9info), M_NOWAIT);
   i = (struct ng_netflow_v9info *)resp->data;
   ng_netflow_copyv9info(priv, i);

   break;
      }
  default:
   ERROUT(EINVAL);
   break;
  }
  break;
 default:
  ERROUT(EINVAL);
  break;
 }





done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);

 return (error);
}
