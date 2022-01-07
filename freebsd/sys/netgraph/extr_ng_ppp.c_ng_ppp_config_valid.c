
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int enableMultilink; int recvShortSeq; int xmitShortSeq; } ;
struct ng_ppp_node_conf {TYPE_4__ bund; TYPE_2__* links; } ;
typedef TYPE_5__* priv_p ;
typedef int node_p ;
struct TYPE_9__ {int recvShortSeq; int xmitShortSeq; int enableMultilink; } ;
struct TYPE_11__ {scalar_t__ numActiveLinks; TYPE_3__ conf; TYPE_1__* links; } ;
struct TYPE_8__ {scalar_t__ mru; scalar_t__ bandwidth; scalar_t__ latency; scalar_t__ enableLink; } ;
struct TYPE_7__ {int * hook; } ;


 scalar_t__ MP_MIN_LINK_MRU ;
 TYPE_5__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ NG_PPP_MAX_BANDWIDTH ;
 scalar_t__ NG_PPP_MAX_LATENCY ;
 int NG_PPP_MAX_LINKS ;

__attribute__((used)) static int
ng_ppp_config_valid(node_p node, const struct ng_ppp_node_conf *newConf)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int i, newNumLinksActive;


 for (newNumLinksActive = i = 0; i < NG_PPP_MAX_LINKS; i++) {
  if (newConf->links[i].enableLink && priv->links[i].hook != ((void*)0))
   newNumLinksActive++;
  if (!newConf->links[i].enableLink)
   continue;
  if (newConf->links[i].mru < MP_MIN_LINK_MRU)
   return (0);
  if (newConf->links[i].bandwidth == 0)
   return (0);
  if (newConf->links[i].bandwidth > NG_PPP_MAX_BANDWIDTH)
   return (0);
  if (newConf->links[i].latency > NG_PPP_MAX_LATENCY)
   return (0);
 }


 if (priv->numActiveLinks > 0 && newNumLinksActive > 0) {
  if (!priv->conf.enableMultilink
    != !newConf->bund.enableMultilink
      || !priv->conf.xmitShortSeq != !newConf->bund.xmitShortSeq
      || !priv->conf.recvShortSeq != !newConf->bund.recvShortSeq)
   return (0);
 }


 if (!newConf->bund.enableMultilink && newNumLinksActive > 1)
  return (0);


 return (1);
}
