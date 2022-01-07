
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_10__ {scalar_t__ start; scalar_t__ end; struct TYPE_10__* right; struct TYPE_10__* left; } ;
struct TYPE_9__ {TYPE_2__ header; int lock; TYPE_2__* root; } ;


 int FALSE ;
 int TRUE ;
 int VM_MAP_UNLOCK_CONSISTENT (TYPE_1__*) ;
 int sx_downgrade (int *) ;
 scalar_t__ sx_try_upgrade (int *) ;
 int vm_map_locked (TYPE_1__*) ;
 TYPE_2__* vm_map_splay (TYPE_1__*,scalar_t__) ;

boolean_t
vm_map_lookup_entry(
 vm_map_t map,
 vm_offset_t address,
 vm_map_entry_t *entry)
{
 vm_map_entry_t cur, lbound;
 boolean_t locked;





 cur = map->root;
 if (cur == ((void*)0)) {
  *entry = &map->header;
  return (FALSE);
 }
 if (address >= cur->start && cur->end > address) {
  *entry = cur;
  return (TRUE);
 }
 if ((locked = vm_map_locked(map)) ||
     sx_try_upgrade(&map->lock)) {






  cur = vm_map_splay(map, address);
  if (!locked) {
   VM_MAP_UNLOCK_CONSISTENT(map);
   sx_downgrade(&map->lock);
  }






  if (address < cur->start) {
   *entry = &map->header;
   return (FALSE);
  }
  *entry = cur;
  return (address < cur->end);
 }




 lbound = &map->header;
 do {
  if (address < cur->start) {
   cur = cur->left;
  } else if (cur->end <= address) {
   lbound = cur;
   cur = cur->right;
  } else {
   *entry = cur;
   return (TRUE);
  }
 } while (cur != ((void*)0));
 *entry = lbound;
 return (FALSE);
}
