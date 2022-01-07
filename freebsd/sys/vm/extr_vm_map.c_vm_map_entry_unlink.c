
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef enum unlink_merge_type { ____Placeholder_unlink_merge_type } unlink_merge_type ;
struct TYPE_24__ {TYPE_1__* prev; struct TYPE_24__* next; struct TYPE_24__* left; struct TYPE_24__* right; int offset; int start; } ;
struct TYPE_23__ {int nentries; int * root; TYPE_3__ header; } ;
struct TYPE_22__ {TYPE_3__* next; } ;


 int CTR3 (int ,char*,TYPE_2__*,int ,TYPE_3__*) ;
 int KASSERT (int ,char*) ;
 int KTR_VM ;


 int VM_MAP_ASSERT_CONSISTENT (TYPE_2__*) ;
 int VM_MAP_ASSERT_LOCKED (TYPE_2__*) ;
 int vm_map_splay_findnext (TYPE_3__*,TYPE_3__**) ;
 int vm_map_splay_findprev (TYPE_3__*,TYPE_3__**) ;
 int vm_map_splay_merge (TYPE_2__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* vm_map_splay_split (TYPE_2__*,int ,int ,TYPE_3__**,TYPE_3__**) ;

__attribute__((used)) static void
vm_map_entry_unlink(vm_map_t map, vm_map_entry_t entry,
    enum unlink_merge_type op)
{
 vm_map_entry_t llist, rlist, root, y;

 VM_MAP_ASSERT_LOCKED(map);
 root = vm_map_splay_split(map, entry->start, 0, &llist, &rlist);
 KASSERT(root != ((void*)0),
     ("vm_map_entry_unlink: unlink object not mapped"));

 vm_map_splay_findnext(root, &rlist);
 switch (op) {
 case 129:
  rlist->start = root->start;
  rlist->offset = root->offset;
  y = root->left;
  root = rlist;
  rlist = root->left;
  root->left = y;
  break;
 case 128:
  vm_map_splay_findprev(root, &llist);
  if (llist != &map->header) {
   root = llist;
   llist = root->right;
   root->right = ((void*)0);
  } else if (rlist != &map->header) {
   root = rlist;
   rlist = root->left;
   root->left = ((void*)0);
  } else
   root = ((void*)0);
  break;
 }
 y = entry->next;
 y->prev = entry->prev;
 y->prev->next = y;
 if (root != ((void*)0))
  vm_map_splay_merge(map, root, llist, rlist);
 else
  map->root = ((void*)0);
 VM_MAP_ASSERT_CONSISTENT(map);
 map->nentries--;
 CTR3(KTR_VM, "vm_map_entry_unlink: map %p, nentries %d, entry %p", map,
     map->nentries, entry);
}
