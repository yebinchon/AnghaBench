
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_10__ {int xmitOctets; int xmitFrames; } ;
struct TYPE_8__ {size_t mru; int enableACFComp; int enableProtoComp; } ;
struct ng_ppp_link {int bytesInQueue; int lastWrite; TYPE_3__ stats; int * hook; TYPE_1__ conf; } ;
struct TYPE_9__ {size_t len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
typedef TYPE_6__* priv_p ;
typedef int node_p ;
typedef int item_p ;
struct TYPE_12__ {int enableRoundRobin; scalar_t__ enableMultilink; } ;
struct TYPE_11__ {int xmitOctets; int xmitFrames; } ;
struct TYPE_13__ {int xmtx; TYPE_5__ conf; int allLinksEqual; TYPE_4__ bundleStats; struct ng_ppp_link* links; } ;


 int EMSGSIZE ;
 int ENETDOWN ;
 int ENOBUFS ;
 int ERROUT (int ) ;
 scalar_t__ MP_AVERAGE_LINK_OVERHEAD ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_FWD_NEW_DATA (int,int ,int *,struct mbuf*) ;
 TYPE_6__* NG_NODE_PRIVATE (int ) ;
 size_t NG_PPP_MAX_LINKS ;
 size_t PROT_LCP ;
 int getmicrouptime (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_ppp_acf ;
 struct mbuf* ng_ppp_addproto (struct mbuf*,size_t,int ) ;
 struct mbuf* ng_ppp_prepend (struct mbuf*,int *,int) ;

__attribute__((used)) static int
ng_ppp_link_xmit(node_p node, item_p item, uint16_t proto, uint16_t linkNum, int plen)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_ppp_link *link;
 int len, error;
 struct mbuf *m;
 uint16_t mru;


 if (linkNum >= NG_PPP_MAX_LINKS) {
  ERROUT(ENETDOWN);
 }


 link = &priv->links[linkNum];


 if (link->hook == ((void*)0)) {
  ERROUT(ENETDOWN);
 }


 NGI_GET_M(item, m);


 mru = link->conf.mru;
 if (mru != 0 && m->m_pkthdr.len > mru) {
  NG_FREE_M(m);
  ERROUT(EMSGSIZE);
 }


 if ((m = ng_ppp_addproto(m, proto, link->conf.enableProtoComp)) ==
     ((void*)0)) {
  ERROUT(ENOBUFS);
 }


 if (proto == PROT_LCP || !link->conf.enableACFComp) {
  if ((m = ng_ppp_prepend(m, &ng_ppp_acf, 2)) == ((void*)0))
   ERROUT(ENOBUFS);
 }


 len = m->m_pkthdr.len;
 NG_FWD_NEW_DATA(error, item, link->hook, m);

 mtx_lock(&priv->xmtx);


 link->stats.xmitFrames++;
 link->stats.xmitOctets += len;


 if (plen > 0) {
     priv->bundleStats.xmitFrames++;
     priv->bundleStats.xmitOctets += plen;
 }


 if (error == 0) {

  if (priv->conf.enableMultilink && !priv->allLinksEqual &&
      !priv->conf.enableRoundRobin) {

   if (link->bytesInQueue == 0)
    getmicrouptime(&link->lastWrite);
   link->bytesInQueue += len + MP_AVERAGE_LINK_OVERHEAD;


   if (link->bytesInQueue > 50 * 1600)
    link->bytesInQueue = 50 * 1600;
  }
 }
 mtx_unlock(&priv->xmtx);
 return (error);

done:
 NG_FREE_ITEM(item);
 return (error);
}
