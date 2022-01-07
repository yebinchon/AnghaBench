
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {void* free_down; void* free_after; } ;


 void* MAX (void*,void*) ;
 struct dmar_map_entry* RB_LEFT (struct dmar_map_entry*,int ) ;
 struct dmar_map_entry* RB_PARENT (struct dmar_map_entry*,int ) ;
 struct dmar_map_entry* RB_RIGHT (struct dmar_map_entry*,int ) ;
 int rb_entry ;

__attribute__((used)) static void
dmar_gas_augment_entry(struct dmar_map_entry *entry)
{
 struct dmar_map_entry *l, *r;

 for (; entry != ((void*)0); entry = RB_PARENT(entry, rb_entry)) {
  l = RB_LEFT(entry, rb_entry);
  r = RB_RIGHT(entry, rb_entry);
  if (l == ((void*)0) && r == ((void*)0)) {
   entry->free_down = entry->free_after;
  } else if (l == ((void*)0) && r != ((void*)0)) {
   entry->free_down = MAX(entry->free_after, r->free_down);
  } else if ( r == ((void*)0)) {
   entry->free_down = MAX(entry->free_after, l->free_down);
  } else {
   entry->free_down = MAX(entry->free_after, l->free_down);
   entry->free_down = MAX(entry->free_down, r->free_down);
  }
 }
}
