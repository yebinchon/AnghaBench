
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef scalar_t__ vm_page_t ;
typedef int uint16_t ;
struct vm_radix_node {void** rn_child; } ;


 uintptr_t VM_RADIX_ISLEAF ;
 int vm_radix_slot (int ,int ) ;

__attribute__((used)) static __inline void
vm_radix_addpage(struct vm_radix_node *rnode, vm_pindex_t index, uint16_t clev,
    vm_page_t page)
{
 int slot;

 slot = vm_radix_slot(index, clev);
 rnode->rn_child[slot] = (void *)((uintptr_t)page | VM_RADIX_ISLEAF);
}
