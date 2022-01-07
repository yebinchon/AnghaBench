
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_26__ {scalar_t__ start; scalar_t__ end; scalar_t__ max_free; struct TYPE_26__* right; struct TYPE_26__* left; } ;
struct TYPE_25__ {TYPE_2__ header; int * root; } ;


 void* MAX (scalar_t__,int ) ;
 int SPLAY_LEFT_STEP (TYPE_2__*,TYPE_2__*,TYPE_2__*,int) ;
 int SPLAY_RIGHT_STEP (TYPE_2__*,TYPE_2__*,TYPE_2__*,int) ;
 int VM_MAP_ASSERT_CONSISTENT (TYPE_1__*) ;
 scalar_t__ vm_map_entry_max_free_left (TYPE_2__*,TYPE_2__*) ;
 int vm_map_entry_max_free_right (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ vm_map_max (TYPE_1__*) ;
 int vm_map_min (TYPE_1__*) ;
 int vm_map_splay_merge (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* vm_map_splay_split (TYPE_1__*,scalar_t__,scalar_t__,TYPE_2__**,TYPE_2__**) ;

vm_offset_t
vm_map_findspace(vm_map_t map, vm_offset_t start, vm_size_t length)
{
 vm_map_entry_t llist, rlist, root, y;
 vm_size_t left_length;
 vm_offset_t gap_end;





 start = MAX(start, vm_map_min(map));
 if (start >= vm_map_max(map) || length > vm_map_max(map) - start)
  return (vm_map_max(map) - length + 1);


 if (map->root == ((void*)0))
  return (start);
 root = vm_map_splay_split(map, start, length, &llist, &rlist);
 gap_end = rlist->start;
 if (root != ((void*)0)) {
  start = root->end;
  if (root->right != ((void*)0))
   gap_end = start;
 } else if (rlist != &map->header) {
  root = rlist;
  rlist = root->left;
  root->left = ((void*)0);
 } else {
  root = llist;
  llist = root->right;
  root->right = ((void*)0);
 }
 vm_map_splay_merge(map, root, llist, rlist);
 VM_MAP_ASSERT_CONSISTENT(map);
 if (length <= gap_end - start)
  return (start);


 if (root->right == ((void*)0) || length > root->right->max_free)
  return (vm_map_max(map) - length + 1);




 llist = rlist = &map->header;
 for (left_length = 0;;
     left_length = vm_map_entry_max_free_left(root, llist)) {
  if (length <= left_length)
   SPLAY_LEFT_STEP(root, y, rlist,
       length <= vm_map_entry_max_free_left(y, llist));
  else
   SPLAY_RIGHT_STEP(root, y, llist,
       length > vm_map_entry_max_free_left(y, root));
  if (root == ((void*)0))
   break;
 }
 root = llist;
 llist = root->right;
 root->right = ((void*)0);
 if (rlist != &map->header) {
  y = rlist;
  rlist = y->left;
  y->left = ((void*)0);
  vm_map_splay_merge(map, y, &map->header, rlist);
  y->max_free = MAX(
      vm_map_entry_max_free_left(y, root),
      vm_map_entry_max_free_right(y, &map->header));
  root->right = y;
 }
 vm_map_splay_merge(map, root, llist, &map->header);
 VM_MAP_ASSERT_CONSISTENT(map);
 return (root->end);
}
