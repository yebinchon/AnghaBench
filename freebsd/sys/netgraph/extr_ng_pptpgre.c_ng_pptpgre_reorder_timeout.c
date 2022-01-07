
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ng_pptpgre_roq {int seq; } ;
typedef int roqh ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef TYPE_3__* hpriv_p ;
typedef int hook_p ;
struct TYPE_10__ {int mtx; int roq; int recvSeq; int roq_len; } ;
struct TYPE_8__ {int recvReorderTimeouts; } ;
struct TYPE_9__ {TYPE_1__ stats; } ;


 int MA_NOTOWNED ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int PPTP_SEQ_DIFF (int ,int ) ;
 scalar_t__ SLIST_EMPTY (int *) ;
 struct ng_pptpgre_roq* SLIST_FIRST (int *) ;
 int SLIST_HEAD_INITIALIZER (int ) ;
 int SLIST_INSERT_AFTER (struct ng_pptpgre_roq*,struct ng_pptpgre_roq*,int ) ;
 int SLIST_INSERT_HEAD (int *,struct ng_pptpgre_roq*,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int ng_pptpgre_ack (TYPE_3__* const) ;
 int ng_pptpgre_sendq (TYPE_3__* const,int *,int *) ;
 int ng_pptpgre_start_reorder_timer (TYPE_3__* const) ;
 int sendq ;

__attribute__((used)) static void
ng_pptpgre_reorder_timeout(node_p node, hook_p hook, void *arg1, int arg2)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 const hpriv_p hpriv = arg1;
 roqh sendq = SLIST_HEAD_INITIALIZER(sendq);
 struct ng_pptpgre_roq *np, *last = ((void*)0);

 priv->stats.recvReorderTimeouts++;
 mtx_lock(&hpriv->mtx);
 if (SLIST_EMPTY(&hpriv->roq)) {
  mtx_unlock(&hpriv->mtx);
  return;
 }

 last = np = SLIST_FIRST(&hpriv->roq);
 hpriv->roq_len--;
 SLIST_REMOVE_HEAD(&hpriv->roq, next);
 SLIST_INSERT_HEAD(&sendq, np, next);


 while (!SLIST_EMPTY(&hpriv->roq)) {
  np = SLIST_FIRST(&hpriv->roq);
  if (PPTP_SEQ_DIFF(np->seq, last->seq) > 1)
   break;


  hpriv->roq_len--;
  SLIST_REMOVE_HEAD(&hpriv->roq, next);
  SLIST_INSERT_AFTER(last, np, next);
  last = np;
 }

 hpriv->recvSeq = last->seq;
 if (!SLIST_EMPTY(&hpriv->roq))
  ng_pptpgre_start_reorder_timer(hpriv);


 ng_pptpgre_ack(hpriv);
 ng_pptpgre_sendq(hpriv, &sendq, ((void*)0));
 mtx_assert(&hpriv->mtx, MA_NOTOWNED);
}
