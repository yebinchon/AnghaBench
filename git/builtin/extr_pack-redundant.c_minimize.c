
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_list {struct pack_list* next; struct llist* remaining_objects; TYPE_1__* unique_objects; } ;
struct llist {scalar_t__ size; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int all_objects ;
 int free (struct llist*) ;
 struct llist* llist_copy (int ) ;
 int llist_sorted_difference_inplace (struct llist*,struct llist*) ;
 struct pack_list* local_packs ;
 int pack_list_insert (struct pack_list**,struct pack_list*) ;
 int sort_pack_list (struct pack_list**) ;

__attribute__((used)) static void minimize(struct pack_list **min)
{
 struct pack_list *pl, *unique = ((void*)0), *non_unique = ((void*)0);
 struct llist *missing, *unique_pack_objects;

 pl = local_packs;
 while (pl) {
  if (pl->unique_objects->size)
   pack_list_insert(&unique, pl);
  else
   pack_list_insert(&non_unique, pl);
  pl = pl->next;
 }

 missing = llist_copy(all_objects);
 pl = unique;
 while (pl) {
  llist_sorted_difference_inplace(missing, pl->remaining_objects);
  pl = pl->next;
 }

 *min = unique;


 if (missing->size == 0) {
  free(missing);
  return;
 }

 unique_pack_objects = llist_copy(all_objects);
 llist_sorted_difference_inplace(unique_pack_objects, missing);


 pl = non_unique;
 while (pl) {
  llist_sorted_difference_inplace(pl->remaining_objects, unique_pack_objects);
  pl = pl->next;
 }

 while (non_unique) {

  sort_pack_list(&non_unique);
  if (non_unique->remaining_objects->size == 0)
   break;

  pack_list_insert(min, non_unique);

  for (pl = non_unique->next; pl && pl->remaining_objects->size > 0; pl = pl->next)
   llist_sorted_difference_inplace(pl->remaining_objects, non_unique->remaining_objects);

  non_unique = non_unique->next;
 }
}
