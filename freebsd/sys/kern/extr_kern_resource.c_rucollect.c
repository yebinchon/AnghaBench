
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {scalar_t__ ru_maxrss; long ru_first; long ru_last; } ;



void
rucollect(struct rusage *ru, struct rusage *ru2)
{
 long *ip, *ip2;
 int i;

 if (ru->ru_maxrss < ru2->ru_maxrss)
  ru->ru_maxrss = ru2->ru_maxrss;
 ip = &ru->ru_first;
 ip2 = &ru2->ru_first;
 for (i = &ru->ru_last - &ru->ru_first; i >= 0; i--)
  *ip++ += *ip2++;
}
