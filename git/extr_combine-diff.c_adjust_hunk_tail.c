
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long flag; } ;



__attribute__((used)) static unsigned long adjust_hunk_tail(struct sline *sline,
          unsigned long all_mask,
          unsigned long hunk_begin,
          unsigned long i)
{







 if ((hunk_begin + 1 <= i) && !(sline[i-1].flag & all_mask))
  i--;
 return i;
}
