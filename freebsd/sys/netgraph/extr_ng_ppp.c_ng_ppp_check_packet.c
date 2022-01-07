
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ng_ppp_frag {scalar_t__ seq; int last; int first; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_5__ {int mseq; int frags; } ;


 scalar_t__ MP_NEXT_RECV_SEQ (TYPE_1__* const,scalar_t__) ;
 int MP_RECV_SEQ_DIFF (TYPE_1__* const,scalar_t__,int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct ng_ppp_frag* TAILQ_FIRST (int *) ;
 struct ng_ppp_frag* TAILQ_NEXT (struct ng_ppp_frag*,int ) ;
 int f_qent ;

__attribute__((used)) static int
ng_ppp_check_packet(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_ppp_frag *qent, *qnext;


 if (TAILQ_EMPTY(&priv->frags))
  return (0);


 qent = TAILQ_FIRST(&priv->frags);
 if (!qent->first || MP_RECV_SEQ_DIFF(priv, qent->seq, priv->mseq) > 1)
  return (0);


 while (!qent->last) {
  qnext = TAILQ_NEXT(qent, f_qent);
  if (qnext == ((void*)0))
   return (0);
  if (qnext->seq != MP_NEXT_RECV_SEQ(priv, qent->seq))
   return (0);
  qent = qnext;
 }


 return (1);
}
