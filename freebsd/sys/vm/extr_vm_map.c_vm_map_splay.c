
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_15__ {struct TYPE_15__* left; struct TYPE_15__* right; } ;
struct TYPE_14__ {TYPE_2__ header; } ;


 int VM_MAP_ASSERT_CONSISTENT (TYPE_1__*) ;
 int vm_map_splay_merge (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* vm_map_splay_split (TYPE_1__*,int ,int ,TYPE_2__**,TYPE_2__**) ;

__attribute__((used)) static vm_map_entry_t
vm_map_splay(vm_map_t map, vm_offset_t addr)
{
 vm_map_entry_t llist, rlist, root;

 root = vm_map_splay_split(map, addr, 0, &llist, &rlist);
 if (root != ((void*)0)) {

 } else if (llist != &map->header) {




  root = llist;
  llist = root->right;
  root->right = ((void*)0);
 } else if (rlist != &map->header) {




  root = rlist;
  rlist = root->left;
  root->left = ((void*)0);
 } else {

  return (((void*)0));
 }
 vm_map_splay_merge(map, root, llist, rlist);
 VM_MAP_ASSERT_CONSISTENT(map);
 return (root);
}
