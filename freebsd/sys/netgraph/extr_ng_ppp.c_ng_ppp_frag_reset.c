
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_ppp_frag {int data; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int frags; int fragsfree; } ;


 int NG_FREE_M (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 struct ng_ppp_frag* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct ng_ppp_frag*,int ) ;
 struct ng_ppp_frag* TAILQ_NEXT (struct ng_ppp_frag*,int ) ;
 int f_qent ;

__attribute__((used)) static void
ng_ppp_frag_reset(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_ppp_frag *qent, *qnext;

 for (qent = TAILQ_FIRST(&priv->frags); qent; qent = qnext) {
  qnext = TAILQ_NEXT(qent, f_qent);
  NG_FREE_M(qent->data);
  TAILQ_INSERT_HEAD(&priv->fragsfree, qent, f_qent);
 }
 TAILQ_INIT(&priv->frags);
}
