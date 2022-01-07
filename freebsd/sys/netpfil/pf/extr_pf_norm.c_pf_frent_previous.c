
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_frent {scalar_t__ fe_off; } ;
struct pf_fragment {struct pf_frent** fr_firstoff; int fr_queue; } ;


 int KASSERT (int,char*) ;
 int PF_FRAG_ENTRY_POINTS ;
 struct pf_frent* TAILQ_LAST (int *,int ) ;
 struct pf_frent* TAILQ_NEXT (struct pf_frent*,int ) ;
 struct pf_frent* TAILQ_PREV (struct pf_frent*,int ,int ) ;
 int fr_next ;
 int pf_fragq ;
 int pf_frent_index (struct pf_frent*) ;

struct pf_frent *
pf_frent_previous(struct pf_fragment *frag, struct pf_frent *frent)
{
 struct pf_frent *prev, *next;
 int index;





 prev = TAILQ_LAST(&frag->fr_queue, pf_fragq);
 KASSERT(prev != ((void*)0), ("prev != NULL"));
 if (prev->fe_off <= frent->fe_off)
  return prev;







 for (index = pf_frent_index(frent); index < PF_FRAG_ENTRY_POINTS;
     index++) {
  prev = frag->fr_firstoff[index];
  if (prev != ((void*)0))
   break;
 }
 KASSERT(prev != ((void*)0), ("prev != NULL"));






 if (prev->fe_off > frent->fe_off) {
  prev = TAILQ_PREV(prev, pf_fragq, fr_next);
  if (prev == ((void*)0))
   return ((void*)0);
  KASSERT(prev->fe_off <= frent->fe_off,
      ("prev->fe_off <= frent->fe_off"));
  return prev;
 }




 for (next = TAILQ_NEXT(prev, fr_next); next != ((void*)0);
     next = TAILQ_NEXT(next, fr_next)) {
  if (next->fe_off > frent->fe_off)
   break;
  prev = next;
 }
 return prev;
}
