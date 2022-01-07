
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_frent {scalar_t__ fe_off; scalar_t__ fe_len; int fe_mff; } ;


 int KASSERT (int,char*) ;
 struct pf_frent* TAILQ_NEXT (struct pf_frent*,int ) ;
 struct pf_frent* TAILQ_PREV (struct pf_frent*,int ,int ) ;
 int fr_next ;
 int pf_fragq ;

__attribute__((used)) static int
pf_frent_holes(struct pf_frent *frent)
{
 struct pf_frent *prev = TAILQ_PREV(frent, pf_fragq, fr_next);
 struct pf_frent *next = TAILQ_NEXT(frent, fr_next);
 int holes = 1;

 if (prev == ((void*)0)) {
  if (frent->fe_off == 0)
   holes--;
 } else {
  KASSERT(frent->fe_off != 0, ("frent->fe_off != 0"));
  if (frent->fe_off == prev->fe_off + prev->fe_len)
   holes--;
 }
 if (next == ((void*)0)) {
  if (!frent->fe_mff)
   holes--;
 } else {
  KASSERT(frent->fe_mff, ("frent->fe_mff"));
  if (next->fe_off == frent->fe_off + frent->fe_len)
   holes--;
 }
 return holes;
}
