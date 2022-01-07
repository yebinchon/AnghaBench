
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_times {scalar_t__ pt_pctcpu; } ;



int
compar(const void *a, const void *b)
{
 return (((const struct p_times *) a)->pt_pctcpu >
  ((const struct p_times *) b)->pt_pctcpu)? -1: 1;
}
