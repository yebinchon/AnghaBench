
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_entry {int name; } ;
struct TYPE_2__ {int name; } ;


 TYPE_1__** active_cache ;
 int active_nr ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int skip_same_name(const struct cache_entry *ce, int pos)
{
 while (++pos < active_nr &&
        !strcmp(active_cache[pos]->name, ce->name))
  ;
 return pos;
}
