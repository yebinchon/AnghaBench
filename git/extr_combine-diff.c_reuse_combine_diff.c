
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long flag; int * p_lno; struct lline* lost; } ;
struct lline {unsigned long parent_map; struct lline* next; } ;



__attribute__((used)) static void reuse_combine_diff(struct sline *sline, unsigned long cnt,
          int i, int j)
{




 unsigned long lno, imask, jmask;
 imask = (1UL<<i);
 jmask = (1UL<<j);

 for (lno = 0; lno <= cnt; lno++) {
  struct lline *ll = sline->lost;
  sline->p_lno[i] = sline->p_lno[j];
  while (ll) {
   if (ll->parent_map & jmask)
    ll->parent_map |= imask;
   ll = ll->next;
  }
  if (sline->flag & jmask)
   sline->flag |= imask;
  sline++;
 }

 sline->p_lno[i] = sline->p_lno[j];
}
