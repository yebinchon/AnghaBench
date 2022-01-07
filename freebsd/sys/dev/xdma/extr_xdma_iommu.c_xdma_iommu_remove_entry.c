
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdma_iommu {int vmem; int dev; int p; } ;
struct TYPE_3__ {struct xdma_iommu xio; } ;
typedef TYPE_1__ xdma_channel_t ;
typedef int vm_offset_t ;


 int PAGE_SIZE ;
 int XDMA_IOMMU_REMOVE (int ,struct xdma_iommu*,int) ;
 int pmap_remove (int *,int,int) ;
 int vmem_free (int ,int,int) ;

void
xdma_iommu_remove_entry(xdma_channel_t *xchan, vm_offset_t va)
{
 struct xdma_iommu *xio;

 xio = &xchan->xio;

 va &= ~(PAGE_SIZE - 1);
 pmap_remove(&xio->p, va, va + PAGE_SIZE);

 XDMA_IOMMU_REMOVE(xio->dev, xio, va);

 vmem_free(xio->vmem, va, PAGE_SIZE);
}
