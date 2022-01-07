
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tbl; int dyn; } ;
struct TYPE_4__ {int type; TYPE_1__ p; } ;
struct pf_pooladdr {scalar_t__ kif; TYPE_2__ addr; } ;
struct pf_palist {int dummy; } ;


 int M_PFRULE ;


 struct pf_pooladdr* TAILQ_FIRST (struct pf_palist*) ;
 int TAILQ_REMOVE (struct pf_palist*,struct pf_pooladdr*,int ) ;
 int entries ;
 int free (struct pf_pooladdr*,int ) ;
 int pfi_dynaddr_remove (int ) ;
 int pfi_kif_unref (scalar_t__) ;
 int pfr_detach_table (int *) ;

__attribute__((used)) static void
pf_empty_pool(struct pf_palist *poola)
{
 struct pf_pooladdr *pa;

 while ((pa = TAILQ_FIRST(poola)) != ((void*)0)) {
  switch (pa->addr.type) {
  case 129:
   pfi_dynaddr_remove(pa->addr.p.dyn);
   break;
  case 128:

   if (pa->addr.p.tbl != ((void*)0))
    pfr_detach_table(pa->addr.p.tbl);
   break;
  }
  if (pa->kif)
   pfi_kif_unref(pa->kif);
  TAILQ_REMOVE(poola, pa, entries);
  free(pa, M_PFRULE);
 }
}
