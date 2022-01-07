
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct TYPE_8__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct l2tp_seq {int cwnd; int mtx; int ns; int rack_timer; struct mbuf** xwin; } ;
typedef TYPE_4__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_9__ {int memoryFailures; int xmitDrops; int xmitTooBig; int xmitInvalid; } ;
struct TYPE_7__ {int enabled; } ;
struct TYPE_10__ {struct l2tp_seq seq; TYPE_3__ stats; TYPE_1__ conf; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENXIO ;
 int EOVERFLOW ;
 int ERROUT (int ) ;
 struct mbuf* L2TP_COPY_MBUF (struct mbuf*,int ) ;
 int L2TP_MAX_XWIN ;
 int L2TP_SEQ_CHECK (struct l2tp_seq*) ;
 int M_NOWAIT ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_4__* NG_NODE_PRIVATE (int const) ;
 int callout_active (int *) ;
 int hz ;
 int m_freem (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_callout (int *,int const,int *,int ,int ,int *,int ) ;
 int ng_l2tp_seq_rack_timeout ;
 int ng_l2tp_xmit_ctrl (TYPE_4__* const,struct mbuf*,scalar_t__) ;

__attribute__((used)) static int
ng_l2tp_rcvdata_ctrl(hook_p hook, item_p item)
{
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct l2tp_seq *const seq = &priv->seq;
 struct mbuf *m;
 int error;
 int i;
 u_int16_t ns;


 L2TP_SEQ_CHECK(&priv->seq);


 if (!priv->conf.enabled) {
  NG_FREE_ITEM(item);
  ERROUT(ENXIO);
 }


 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);


 if (m->m_pkthdr.len < 2) {
  priv->stats.xmitInvalid++;
  m_freem(m);
  ERROUT(EINVAL);
 }


 if (m->m_pkthdr.len >= 0x10000 - 14) {
  priv->stats.xmitTooBig++;
  m_freem(m);
  ERROUT(EOVERFLOW);
 }

 mtx_lock(&seq->mtx);


 for (i = 0; i < L2TP_MAX_XWIN && seq->xwin[i] != ((void*)0); i++);
 if (i == L2TP_MAX_XWIN) {
  mtx_unlock(&seq->mtx);
  priv->stats.xmitDrops++;
  m_freem(m);
  ERROUT(ENOBUFS);
 }
 seq->xwin[i] = m;


 if (i >= seq->cwnd) {
  mtx_unlock(&seq->mtx);
  ERROUT(0);
 }


 if (!callout_active(&seq->rack_timer))
  ng_callout(&seq->rack_timer, node, ((void*)0),
      hz, ng_l2tp_seq_rack_timeout, ((void*)0), 0);

 ns = seq->ns++;

 mtx_unlock(&seq->mtx);


 if ((m = L2TP_COPY_MBUF(m, M_NOWAIT)) == ((void*)0)) {
  priv->stats.memoryFailures++;
  ERROUT(ENOBUFS);
 }


 error = ng_l2tp_xmit_ctrl(priv, m, ns);
done:

 L2TP_SEQ_CHECK(&priv->seq);
 return (error);
}
