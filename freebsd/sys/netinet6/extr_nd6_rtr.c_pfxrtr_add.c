
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int ndpr_advrtrs; } ;
struct nd_pfxrouter {struct nd_defrouter* router; } ;
struct nd_defrouter {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct nd_pfxrouter*,int ) ;
 int M_IP6NDP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ND6_RLOCK () ;
 int ND6_RUNLOCK () ;
 int ND6_UNLOCK_ASSERT () ;
 int ND6_WLOCK () ;
 int ND6_WUNLOCK () ;
 int defrouter_ref (struct nd_defrouter*) ;
 int defrouter_rele (struct nd_defrouter*) ;
 int free (struct nd_pfxrouter*,int ) ;
 struct nd_pfxrouter* malloc (int,int ,int) ;
 int pfr_entry ;
 int pfxlist_onlink_check () ;
 int * pfxrtr_lookup (struct nd_prefix*,struct nd_defrouter*) ;

__attribute__((used)) static void
pfxrtr_add(struct nd_prefix *pr, struct nd_defrouter *dr)
{
 struct nd_pfxrouter *new;
 bool update;

 ND6_UNLOCK_ASSERT();

 ND6_RLOCK();
 if (pfxrtr_lookup(pr, dr) != ((void*)0)) {
  ND6_RUNLOCK();
  return;
 }
 ND6_RUNLOCK();

 new = malloc(sizeof(*new), M_IP6NDP, M_NOWAIT | M_ZERO);
 if (new == ((void*)0))
  return;
 defrouter_ref(dr);
 new->router = dr;

 ND6_WLOCK();
 if (pfxrtr_lookup(pr, dr) == ((void*)0)) {
  LIST_INSERT_HEAD(&pr->ndpr_advrtrs, new, pfr_entry);
  update = 1;
 } else {

  defrouter_rele(dr);
  free(new, M_IP6NDP);
  update = 0;
 }
 ND6_WUNLOCK();

 if (update)
  pfxlist_onlink_check();
}
