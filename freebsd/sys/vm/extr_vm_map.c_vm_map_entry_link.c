
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_18__ {int * right; int left; struct TYPE_18__* prev; struct TYPE_18__* next; int start; } ;
struct TYPE_17__ {int nentries; } ;


 int CTR3 (int ,char*,TYPE_1__*,int ,TYPE_2__*) ;
 int KASSERT (int ,char*) ;
 int KTR_VM ;
 int VM_MAP_ASSERT_CONSISTENT (TYPE_1__*) ;
 int VM_MAP_ASSERT_LOCKED (TYPE_1__*) ;
 int vm_map_splay_merge (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* vm_map_splay_split (TYPE_1__*,int ,int ,TYPE_2__**,TYPE_2__**) ;

__attribute__((used)) static void
vm_map_entry_link(vm_map_t map, vm_map_entry_t entry)
{
 vm_map_entry_t llist, rlist, root;

 CTR3(KTR_VM,
     "vm_map_entry_link: map %p, nentries %d, entry %p", map,
     map->nentries, entry);
 VM_MAP_ASSERT_LOCKED(map);
 map->nentries++;
 root = vm_map_splay_split(map, entry->start, 0, &llist, &rlist);
 KASSERT(root == ((void*)0),
     ("vm_map_entry_link: link object already mapped"));
 entry->prev = llist;
 entry->next = rlist;
 llist->next = rlist->prev = entry;
 entry->left = entry->right = ((void*)0);
 vm_map_splay_merge(map, entry, llist, rlist);
 VM_MAP_ASSERT_CONSISTENT(map);
}
