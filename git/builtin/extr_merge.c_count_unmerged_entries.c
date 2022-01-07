
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * active_cache ;
 int active_nr ;
 scalar_t__ ce_stage (int ) ;

__attribute__((used)) static int count_unmerged_entries(void)
{
 int i, ret = 0;

 for (i = 0; i < active_nr; i++)
  if (ce_stage(active_cache[i]))
   ret++;

 return ret;
}
