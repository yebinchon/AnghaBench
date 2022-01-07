
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdma_iommu {int vmem; } ;
struct TYPE_3__ {struct xdma_iommu xio; } ;
typedef TYPE_1__ xdma_channel_t ;
typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int M_FIRSTFIT ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int panic (char*) ;
 int roundup2 (int ,int) ;
 scalar_t__ vmem_alloc (int ,int ,int,int*) ;
 int xdma_iommu_enter (struct xdma_iommu*,int,int,int ,int ) ;

void
xdma_iommu_add_entry(xdma_channel_t *xchan, vm_offset_t *va,
    vm_paddr_t pa, vm_size_t size, vm_prot_t prot)
{
 struct xdma_iommu *xio;
 vm_offset_t addr;

 size = roundup2(size, PAGE_SIZE);
 xio = &xchan->xio;

 if (vmem_alloc(xio->vmem, size,
     M_FIRSTFIT | M_NOWAIT, &addr)) {
  panic("Could not allocate virtual address.\n");
 }

 addr |= pa & (PAGE_SIZE - 1);

 if (va)
  *va = addr;

 xdma_iommu_enter(xio, addr, pa, size, prot);
}
