
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
struct TYPE_7__ {struct TYPE_7__* left; } ;


 int SPLAY_RIGHT_STEP (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void
vm_map_splay_findprev(vm_map_entry_t root, vm_map_entry_t *iolist)
{
 vm_map_entry_t llist, y;

 root = root->left;
 llist = *iolist;
 while (root != ((void*)0))
  SPLAY_RIGHT_STEP(root, y, llist, 1);
 *iolist = llist;
}
