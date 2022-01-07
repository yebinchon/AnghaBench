
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct l2tp_seq {int ns; int xack_timer; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_4__ {struct l2tp_seq seq; } ;


 int L2TP_SEQ_CHECK (struct l2tp_seq* const) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int callout_active (int *) ;
 scalar_t__ callout_pending (int *) ;
 int ng_l2tp_xmit_ctrl (TYPE_1__* const,int *,int ) ;

__attribute__((used)) static void
ng_l2tp_seq_xack_timeout(node_p node, hook_p hook, void *arg1, int arg2)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct l2tp_seq *const seq = &priv->seq;


 if (callout_pending(&seq->xack_timer) ||
     (!callout_active(&seq->xack_timer)))
  return;


 L2TP_SEQ_CHECK(seq);


 ng_l2tp_xmit_ctrl(priv, ((void*)0), seq->ns);





 L2TP_SEQ_CHECK(seq);
}
