
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pft_entry {int dummy; } ;
typedef struct pft_entry pfq_entry ;
typedef struct pft_entry pfl_entry ;
typedef struct pft_entry pfi_entry ;
typedef struct pft_entry pfa_entry ;


 struct pft_entry* TAILQ_FIRST (int *) ;
 struct pft_entry* TAILQ_NEXT (struct pft_entry*,int ) ;
 int close (int ) ;
 int dev ;
 int free (struct pft_entry*) ;
 int link ;
 int pfa_table ;
 int pfi_table ;
 int pfl_table ;
 int pfq_table ;
 int pft_table ;

__attribute__((used)) static int
pf_fini(void)
{
 struct pfi_entry *i1, *i2;
 struct pfq_entry *q1, *q2;
 struct pft_entry *t1, *t2;
 struct pfa_entry *a1, *a2;
 struct pfl_entry *l1, *l2;


 i1 = TAILQ_FIRST(&pfi_table);
 while (i1 != ((void*)0)) {
  i2 = TAILQ_NEXT(i1, link);
  free(i1);
  i1 = i2;
 }


 q1 = TAILQ_FIRST(&pfq_table);
 while (q1 != ((void*)0)) {
  q2 = TAILQ_NEXT(q1, link);
  free(q1);
  q1 = q2;
 }


 t1 = TAILQ_FIRST(&pft_table);
 while (t1 != ((void*)0)) {
  t2 = TAILQ_NEXT(t1, link);
  free(t1);
  t1 = t2;
 }


 a1 = TAILQ_FIRST(&pfa_table);
 while (a1 != ((void*)0)) {
  a2 = TAILQ_NEXT(a1, link);
  free(a1);
  a1 = a2;
 }


 l1 = TAILQ_FIRST(&pfl_table);
 while (l1 != ((void*)0)) {
  l2 = TAILQ_NEXT(l1, link);
  free(l1);
  l1 = l2;
 }

 close(dev);
 return (0);
}
