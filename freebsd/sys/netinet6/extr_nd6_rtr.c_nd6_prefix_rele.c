
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int ndpr_advrtrs; int ndpr_refcnt; } ;


 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int M_IP6NDP ;
 int free (struct nd_prefix*,int ) ;
 scalar_t__ refcount_release (int *) ;

void
nd6_prefix_rele(struct nd_prefix *pr)
{

 if (refcount_release(&pr->ndpr_refcnt)) {
  KASSERT(LIST_EMPTY(&pr->ndpr_advrtrs),
      ("prefix %p has advertising routers", pr));
  free(pr, M_IP6NDP);
 }
}
