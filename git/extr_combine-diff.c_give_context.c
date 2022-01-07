
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long flag; } ;


 unsigned long adjust_hunk_tail (struct sline*,unsigned long,unsigned long,unsigned long) ;
 unsigned long context ;
 unsigned long find_next (struct sline*,unsigned long,unsigned long,unsigned long,int) ;

__attribute__((used)) static int give_context(struct sline *sline, unsigned long cnt, int num_parent)
{
 unsigned long all_mask = (1UL<<num_parent) - 1;
 unsigned long mark = (1UL<<num_parent);
 unsigned long no_pre_delete = (2UL<<num_parent);
 unsigned long i;
 i = find_next(sline, mark, 0, cnt, 0);
 if (cnt < i)
  return 0;

 while (i <= cnt) {
  unsigned long j = (context < i) ? (i - context) : 0;
  unsigned long k;


  while (j < i) {
   if (!(sline[j].flag & mark))
    sline[j].flag |= no_pre_delete;
   sline[j++].flag |= mark;
  }

 again:



  j = find_next(sline, mark, i, cnt, 1);
  if (cnt < j)
   break;


  k = find_next(sline, mark, j, cnt, 0);
  j = adjust_hunk_tail(sline, all_mask, i, j);

  if (k < j + context) {



   while (j < k)
    sline[j++].flag |= mark;
   i = k;
   goto again;
  }





  i = k;
  k = (j + context < cnt+1) ? j + context : cnt+1;
  while (j < k)
   sline[j++].flag |= mark;
 }
 return 1;
}
