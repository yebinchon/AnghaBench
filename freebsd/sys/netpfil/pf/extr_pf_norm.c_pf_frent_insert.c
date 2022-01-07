
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_frent {scalar_t__ fe_off; scalar_t__ fe_len; } ;
struct pf_fragment {int* fr_entries; int fr_holes; struct pf_frent** fr_firstoff; int fr_queue; } ;


 int CTASSERT (int) ;
 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int PF_FRAG_ENTRY_LIMIT ;
 int TAILQ_INSERT_AFTER (int *,struct pf_frent*,struct pf_frent*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct pf_frent*,int ) ;
 int fr_next ;
 scalar_t__ pf_frent_holes (struct pf_frent*) ;
 int pf_frent_index (struct pf_frent*) ;

__attribute__((used)) static int
pf_frent_insert(struct pf_fragment *frag, struct pf_frent *frent,
    struct pf_frent *prev)
{
 int index;

 CTASSERT(PF_FRAG_ENTRY_LIMIT <= 0xff);






 index = pf_frent_index(frent);
 if (frag->fr_entries[index] >= PF_FRAG_ENTRY_LIMIT)
  return ENOBUFS;
 frag->fr_entries[index]++;

 if (prev == ((void*)0)) {
  TAILQ_INSERT_HEAD(&frag->fr_queue, frent, fr_next);
 } else {
  KASSERT(prev->fe_off + prev->fe_len <= frent->fe_off,
      ("overlapping fragment"));
  TAILQ_INSERT_AFTER(&frag->fr_queue, prev, frent, fr_next);
 }

 if (frag->fr_firstoff[index] == ((void*)0)) {
  KASSERT(prev == ((void*)0) || pf_frent_index(prev) < index,
      ("prev == NULL || pf_frent_index(pref) < index"));
  frag->fr_firstoff[index] = frent;
 } else {
  if (frent->fe_off < frag->fr_firstoff[index]->fe_off) {
   KASSERT(prev == ((void*)0) || pf_frent_index(prev) < index,
       ("prev == NULL || pf_frent_index(pref) < index"));
   frag->fr_firstoff[index] = frent;
  } else {
   KASSERT(prev != ((void*)0), ("prev != NULL"));
   KASSERT(pf_frent_index(prev) == index,
       ("pf_frent_index(prev) == index"));
  }
 }

 frag->fr_holes += pf_frent_holes(frent);

 return 0;
}
