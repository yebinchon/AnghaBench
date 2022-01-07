
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct l2tp_seq {int mtx; int xack_timer; int rack_timer; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_5__ {struct l2tp_seq seq; } ;


 int L2TP_SEQ_CHECK (struct l2tp_seq* const) ;
 int M_NETGRAPH_L2TP ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_UNREF (int ) ;
 int free (TYPE_1__* const,int ) ;
 int mtx_destroy (int *) ;
 int ng_l2tp_seq_reset (TYPE_1__* const) ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static int
ng_l2tp_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct l2tp_seq *const seq = &priv->seq;


 L2TP_SEQ_CHECK(seq);


 ng_l2tp_seq_reset(priv);


 ng_uncallout(&seq->rack_timer, node);
 ng_uncallout(&seq->xack_timer, node);

 mtx_destroy(&seq->mtx);

 free(priv, M_NETGRAPH_L2TP);


 NG_NODE_UNREF(node);
 return (0);
}
