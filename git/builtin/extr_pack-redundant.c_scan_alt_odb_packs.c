
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_list {struct pack_list* next; int remaining_objects; } ;


 struct pack_list* altodb_packs ;
 int llist_sorted_difference_inplace (int ,int ) ;
 struct pack_list* local_packs ;

__attribute__((used)) static void scan_alt_odb_packs(void)
{
 struct pack_list *local, *alt;

 alt = altodb_packs;
 while (alt) {
  local = local_packs;
  while (local) {
   llist_sorted_difference_inplace(local->remaining_objects,
       alt->remaining_objects);
   local = local->next;
  }
  alt = alt->next;
 }
}
