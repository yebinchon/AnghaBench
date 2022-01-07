
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_list {struct pack_list* next; int pack; } ;


 scalar_t__ sizeof_union (int ,int ) ;

__attribute__((used)) static size_t get_pack_redundancy(struct pack_list *pl)
{
 struct pack_list *subset;
 size_t ret = 0;

 if (pl == ((void*)0))
  return 0;

 while ((subset = pl->next)) {
  while (subset) {
   ret += sizeof_union(pl->pack, subset->pack);
   subset = subset->next;
  }
  pl = pl->next;
 }
 return ret;
}
