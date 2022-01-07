
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_hw_priority {int match; int * ports; } ;
struct bhnd_core_info {int dummy; } ;


 scalar_t__ bhnd_core_matches (struct bhnd_core_info*,int *) ;

const struct bhndb_hw_priority *
bhndb_hw_priority_find_core(const struct bhndb_hw_priority *table,
    struct bhnd_core_info *core)
{
 const struct bhndb_hw_priority *hp;

 for (hp = table; hp->ports != ((void*)0); hp++) {
  if (bhnd_core_matches(core, &hp->match))
   return (hp);
 }


 return (((void*)0));
}
