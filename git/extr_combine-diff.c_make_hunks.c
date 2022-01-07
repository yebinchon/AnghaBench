
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long flag; struct lline* lost; } ;
struct lline {unsigned long parent_map; struct lline* next; } ;


 unsigned long adjust_hunk_tail (struct sline*,unsigned long,unsigned long,unsigned long) ;
 unsigned long context ;
 int give_context (struct sline*,unsigned long,int) ;
 scalar_t__ interesting (struct sline*,unsigned long) ;

__attribute__((used)) static int make_hunks(struct sline *sline, unsigned long cnt,
         int num_parent, int dense)
{
 unsigned long all_mask = (1UL<<num_parent) - 1;
 unsigned long mark = (1UL<<num_parent);
 unsigned long i;
 int has_interesting = 0;

 for (i = 0; i <= cnt; i++) {
  if (interesting(&sline[i], all_mask))
   sline[i].flag |= mark;
  else
   sline[i].flag &= ~mark;
 }
 if (!dense)
  return give_context(sline, cnt, num_parent);





 i = 0;
 while (i <= cnt) {
  unsigned long j, hunk_begin, hunk_end;
  unsigned long same_diff;
  while (i <= cnt && !(sline[i].flag & mark))
   i++;
  if (cnt < i)
   break;
  hunk_begin = i;
  for (j = i + 1; j <= cnt; j++) {
   if (!(sline[j].flag & mark)) {




    unsigned long la;
    int contin = 0;
    la = adjust_hunk_tail(sline, all_mask,
           hunk_begin, j);
    la = (la + context < cnt + 1) ?
     (la + context) : cnt + 1;
    while (la && j <= --la) {
     if (sline[la].flag & mark) {
      contin = 1;
      break;
     }
    }
    if (!contin)
     break;
    j = la;
   }
  }
  hunk_end = j;
  same_diff = 0;
  has_interesting = 0;
  for (j = i; j < hunk_end && !has_interesting; j++) {
   unsigned long this_diff = sline[j].flag & all_mask;
   struct lline *ll = sline[j].lost;
   if (this_diff) {



    if (!same_diff)
     same_diff = this_diff;
    else if (same_diff != this_diff) {
     has_interesting = 1;
     break;
    }
   }
   while (ll && !has_interesting) {



    this_diff = ll->parent_map;
    if (!same_diff)
     same_diff = this_diff;
    else if (same_diff != this_diff) {
     has_interesting = 1;
    }
    ll = ll->next;
   }
  }

  if (!has_interesting && same_diff != all_mask) {

   for (j = hunk_begin; j < hunk_end; j++)
    sline[j].flag &= ~mark;
  }
  i = hunk_end;
 }

 has_interesting = give_context(sline, cnt, num_parent);
 return has_interesting;
}
