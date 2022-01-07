
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_list {struct pack_list* next; TYPE_1__* remaining_objects; } ;
struct llist_item {struct llist_item* next; int oid; } ;
struct TYPE_2__ {struct llist_item* front; } ;


 int all_objects ;
 struct pack_list* altodb_packs ;
 int llist_init (int *) ;
 struct llist_item* llist_insert_sorted_unique (int ,int ,struct llist_item*) ;
 int llist_sorted_difference_inplace (int ,TYPE_1__*) ;
 struct pack_list* local_packs ;

__attribute__((used)) static void load_all_objects(void)
{
 struct pack_list *pl = local_packs;
 struct llist_item *hint, *l;

 llist_init(&all_objects);

 while (pl) {
  hint = ((void*)0);
  l = pl->remaining_objects->front;
  while (l) {
   hint = llist_insert_sorted_unique(all_objects,
         l->oid, hint);
   l = l->next;
  }
  pl = pl->next;
 }

 pl = altodb_packs;
 while (pl) {
  llist_sorted_difference_inplace(all_objects, pl->remaining_objects);
  pl = pl->next;
 }
}
