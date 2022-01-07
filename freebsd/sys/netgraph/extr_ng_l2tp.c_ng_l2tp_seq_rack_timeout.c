
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct mbuf {int dummy; } ;
struct l2tp_seq {int rexmits; int ssth; int cwnd; int ns; int mtx; int * xwin; scalar_t__ acks; int rack; int rack_timer; } ;
typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_8__ {int memoryFailures; int xmitRetransmits; } ;
struct TYPE_7__ {scalar_t__ rexmit_max; int rexmit_max_to; } ;
struct TYPE_9__ {TYPE_2__ stats; TYPE_1__ conf; struct l2tp_seq seq; } ;


 struct mbuf* L2TP_COPY_MBUF (int ,int ) ;
 int L2TP_SEQ_CHECK (struct l2tp_seq* const) ;
 int M_NOWAIT ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int callout_active (int *) ;
 scalar_t__ callout_pending (int *) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_callout (int *,int ,int *,int,void (*) (int ,int ,void*,int),int *,int ) ;
 int ng_l2tp_seq_failure (TYPE_3__* const) ;
 int ng_l2tp_xmit_ctrl (TYPE_3__* const,struct mbuf*,int ) ;

__attribute__((used)) static void
ng_l2tp_seq_rack_timeout(node_p node, hook_p hook, void *arg1, int arg2)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct l2tp_seq *const seq = &priv->seq;
 struct mbuf *m;
 u_int delay;


 if (callout_pending(&seq->rack_timer) ||
     (!callout_active(&seq->rack_timer)))
  return;


 L2TP_SEQ_CHECK(seq);

 mtx_lock(&seq->mtx);
 priv->stats.xmitRetransmits++;


 if (seq->rexmits++ >= priv->conf.rexmit_max)
  ng_l2tp_seq_failure(priv);


 delay = (seq->rexmits > 12) ? (1 << 12) : (1 << seq->rexmits);
 if (delay > priv->conf.rexmit_max_to)
  delay = priv->conf.rexmit_max_to;
 ng_callout(&seq->rack_timer, node, ((void*)0),
     hz * delay, ng_l2tp_seq_rack_timeout, ((void*)0), 0);


 seq->ns = seq->rack;
 seq->ssth = (seq->cwnd + 1) / 2;
 seq->cwnd = 1;
 seq->acks = 0;


 m = L2TP_COPY_MBUF(seq->xwin[0], M_NOWAIT);
 mtx_unlock(&seq->mtx);
 if (m == ((void*)0))
  priv->stats.memoryFailures++;
 else
  ng_l2tp_xmit_ctrl(priv, m, seq->ns++);





 L2TP_SEQ_CHECK(seq);
}
