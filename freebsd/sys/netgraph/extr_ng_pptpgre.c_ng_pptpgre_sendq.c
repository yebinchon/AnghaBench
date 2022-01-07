
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef struct ng_pptpgre_roq {int item; } const ng_pptpgre_roq ;
struct mbuf {int dummy; } ;
typedef int roqh ;
typedef TYPE_1__* hpriv_p ;
struct TYPE_3__ {int hook; int mtx; } ;


 int MA_NOTOWNED ;
 int M_NETGRAPH ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FWD_NEW_DATA (int,int ,int ,struct mbuf*) ;
 int SLIST_EMPTY (int *) ;
 struct ng_pptpgre_roq const* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct ng_pptpgre_roq const*,int ) ;
 int mtx_assert (int *,int ) ;
 int next ;

__attribute__((used)) static int
ng_pptpgre_sendq(const hpriv_p hpriv, roqh *q, const struct ng_pptpgre_roq *st)
{
 struct ng_pptpgre_roq *np;
 struct mbuf *m;
 int error = 0;

 mtx_assert(&hpriv->mtx, MA_NOTOWNED);
 while (!SLIST_EMPTY(q)) {
  np = SLIST_FIRST(q);
  SLIST_REMOVE_HEAD(q, next);
  NGI_GET_M(np->item, m);
  NG_FWD_NEW_DATA(error, np->item, hpriv->hook, m);
  if (np != st)
   free(np, M_NETGRAPH);
 }
 return (error);
}
