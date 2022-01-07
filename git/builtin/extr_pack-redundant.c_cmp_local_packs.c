
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_list {struct pack_list* next; } ;


 int cmp_two_packs (struct pack_list*,struct pack_list*) ;
 struct pack_list* local_packs ;

__attribute__((used)) static void cmp_local_packs(void)
{
 struct pack_list *subset, *pl = local_packs;

 while ((subset = pl)) {
  while ((subset = subset->next))
   cmp_two_packs(pl, subset);
  pl = pl->next;
 }
}
