
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct ng_ppp_node_conf {int * links; int bund; } ;
struct ng_ppp_mp_state {int dropFragments; int dupFragments; int runts; int badProtos; int recvOctets; int recvFrames; int xmitOctets; int xmitFrames; int xseq; int mseq; int * rseq; } ;
struct ng_ppp_link_stat64 {int dropFragments; int dupFragments; int runts; int badProtos; int recvOctets; int recvFrames; int xmitOctets; int xmitFrames; int xseq; int mseq; int * rseq; } ;
struct ng_ppp_link_stat {int dropFragments; int dupFragments; int runts; int badProtos; int recvOctets; int recvFrames; int xmitOctets; int xmitFrames; } ;
struct TYPE_6__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_2__ header; scalar_t__ data; } ;
typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_7__ {int * hooks; TYPE_1__* links; struct ng_ppp_mp_state bundleStats; int xseq; int mseq; int conf; } ;
struct TYPE_5__ {struct ng_ppp_mp_state stats; int seq; int conf; } ;
typedef struct ng_mesg* NGI_MSG ;


 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int) ;
 size_t HOOK_INDEX_VJC_IP ;
 int MP_NOSEQ ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_FWD_ITEM_HOOK (int,struct ng_mesg*,int ) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int NG_PPP_BUNDLE_LINKNUM ;
 int NG_PPP_MAX_LINKS ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (struct ng_ppp_mp_state*,scalar_t__,int) ;
 int bzero (struct ng_ppp_mp_state*,int) ;
 int ng_ppp_config_valid (int ,struct ng_ppp_node_conf* const) ;
 int ng_ppp_update (int ,int) ;

__attribute__((used)) static int
ng_ppp_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 136:
  switch (msg->header.cmd) {
  case 129:
      {
   struct ng_ppp_node_conf *const conf =
       (struct ng_ppp_node_conf *)msg->data;
   int i;


   if (msg->header.arglen != sizeof(*conf))
    ERROUT(EINVAL);
   if (!ng_ppp_config_valid(node, conf))
    ERROUT(EINVAL);


   priv->conf = conf->bund;
   for (i = 0; i < NG_PPP_MAX_LINKS; i++)
    priv->links[i].conf = conf->links[i];
   ng_ppp_update(node, 1);
   break;
      }
  case 133:
      {
   struct ng_ppp_node_conf *conf;
   int i;

   NG_MKRESPONSE(resp, msg, sizeof(*conf), M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);
   conf = (struct ng_ppp_node_conf *)resp->data;
   conf->bund = priv->conf;
   for (i = 0; i < NG_PPP_MAX_LINKS; i++)
    conf->links[i] = priv->links[i].conf;
   break;
      }
  case 130:
      {
   struct ng_ppp_mp_state *info;
   int i;

   NG_MKRESPONSE(resp, msg, sizeof(*info), M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);
   info = (struct ng_ppp_mp_state *)resp->data;
   bzero(info, sizeof(*info));
   for (i = 0; i < NG_PPP_MAX_LINKS; i++) {
    if (priv->links[i].seq != MP_NOSEQ)
     info->rseq[i] = priv->links[i].seq;
   }
   info->mseq = priv->mseq;
   info->xseq = priv->xseq;
   break;
      }
  case 132:
  case 137:
  case 135:
  case 131:
  case 134:
      {
   struct ng_ppp_link_stat64 *stats;
   uint16_t linkNum;


   if (msg->header.arglen != sizeof(uint16_t))
    ERROUT(EINVAL);
   linkNum = *((uint16_t *) msg->data);
   if (linkNum >= NG_PPP_MAX_LINKS
       && linkNum != NG_PPP_BUNDLE_LINKNUM)
    ERROUT(EINVAL);
   stats = (linkNum == NG_PPP_BUNDLE_LINKNUM) ?
       &priv->bundleStats : &priv->links[linkNum].stats;


   if (msg->header.cmd == 131 ||
       msg->header.cmd == 134) {
    NG_MKRESPONSE(resp, msg,
        sizeof(struct ng_ppp_link_stat64), M_NOWAIT);
    if (resp == ((void*)0))
     ERROUT(ENOMEM);
    bcopy(stats, resp->data, sizeof(*stats));
   } else

   if (msg->header.cmd == 132 ||
       msg->header.cmd == 135) {
    struct ng_ppp_link_stat *rs;
    NG_MKRESPONSE(resp, msg,
        sizeof(struct ng_ppp_link_stat), M_NOWAIT);
    if (resp == ((void*)0))
     ERROUT(ENOMEM);
    rs = (struct ng_ppp_link_stat *)resp->data;

    rs->xmitFrames = stats->xmitFrames;
    rs->xmitOctets = stats->xmitOctets;
    rs->recvFrames = stats->recvFrames;
    rs->recvOctets = stats->recvOctets;
    rs->badProtos = stats->badProtos;
    rs->runts = stats->runts;
    rs->dupFragments = stats->dupFragments;
    rs->dropFragments = stats->dropFragments;
   }

   if (msg->header.cmd != 132 &&
       msg->header.cmd != 131)
    bzero(stats, sizeof(*stats));
   break;
      }
  default:
   error = EINVAL;
   break;
  }
  break;
 case 128:
     {
  NGI_MSG(item) = msg;
  msg = ((void*)0);
  if ((lasthook = priv->hooks[HOOK_INDEX_VJC_IP])) {
   NG_FWD_ITEM_HOOK(error, item, lasthook);
  }
  return (error);
     }
 default:
  error = EINVAL;
  break;
 }
done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
