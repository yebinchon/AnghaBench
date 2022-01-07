
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct l2tp_seq {int wmax; int cwnd; int ssth; int ** xwin; scalar_t__ rexmits; scalar_t__ acks; scalar_t__ xack; scalar_t__ rack; scalar_t__ nr; scalar_t__ ns; int xack_timer; int rack_timer; } ;
typedef TYPE_1__* priv_p ;
typedef int hook_p ;
struct TYPE_3__ {int node; struct l2tp_seq seq; } ;


 int L2TP_MAX_XWIN ;
 int L2TP_SEQ_CHECK (struct l2tp_seq* const) ;
 int NG_NODE_FOREACH_HOOK (int ,int ,int *,int ) ;
 int bzero (int **,int) ;
 int m_freem (int *) ;
 int ng_l2tp_reset_session ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static void
ng_l2tp_seq_reset(priv_p priv)
{
 struct l2tp_seq *const seq = &priv->seq;
 hook_p hook;
 int i;


 L2TP_SEQ_CHECK(seq);


 ng_uncallout(&seq->rack_timer, priv->node);
 ng_uncallout(&seq->xack_timer, priv->node);


 for (i = 0; i < L2TP_MAX_XWIN; i++) {
  if (seq->xwin[i] == ((void*)0))
   break;
  m_freem(seq->xwin[i]);
 }


 NG_NODE_FOREACH_HOOK(priv->node, ng_l2tp_reset_session, ((void*)0), hook);


 seq->ns = 0;
 seq->nr = 0;
 seq->rack = 0;
 seq->xack = 0;
 seq->wmax = L2TP_MAX_XWIN;
 seq->cwnd = 1;
 seq->ssth = seq->wmax;
 seq->acks = 0;
 seq->rexmits = 0;
 bzero(seq->xwin, sizeof(seq->xwin));


 L2TP_SEQ_CHECK(seq);
}
