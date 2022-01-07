
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;


 TYPE_1__** active_cache ;
 int active_nr ;
 int ce_stage (TYPE_1__*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int get_ours_cache_pos(const char *path, int pos)
{
 int i = -pos - 1;

 while ((i < active_nr) && !strcmp(active_cache[i]->name, path)) {
  if (ce_stage(active_cache[i]) == 2)
   return i;
  i++;
 }
 return -1;
}
