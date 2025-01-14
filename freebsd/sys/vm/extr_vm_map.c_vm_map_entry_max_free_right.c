
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_6__ {scalar_t__ end; scalar_t__ start; TYPE_1__* right; } ;
struct TYPE_5__ {scalar_t__ max_free; } ;



__attribute__((used)) static inline vm_size_t
vm_map_entry_max_free_right(vm_map_entry_t root, vm_map_entry_t right_ancestor)
{

 return (root->right != ((void*)0) ?
     root->right->max_free : right_ancestor->start - root->end);
}
