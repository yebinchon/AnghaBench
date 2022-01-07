
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long flag; } ;



__attribute__((used)) static unsigned long find_next(struct sline *sline,
          unsigned long mark,
          unsigned long i,
          unsigned long cnt,
          int look_for_uninteresting)
{







 while (i <= cnt)
  if (look_for_uninteresting
      ? !(sline[i].flag & mark)
      : (sline[i].flag & mark))
   return i;
  else
   i++;
 return i;
}
