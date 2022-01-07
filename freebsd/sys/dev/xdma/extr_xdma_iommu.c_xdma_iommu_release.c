
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_iommu {int dev; int vmem; int p; } ;


 int XDMA_IOMMU_RELEASE (int ,struct xdma_iommu*) ;
 int pmap_release (int *) ;
 int vmem_destroy (int ) ;

int
xdma_iommu_release(struct xdma_iommu *xio)
{

 pmap_release(&xio->p);

 vmem_destroy(xio->vmem);

 XDMA_IOMMU_RELEASE(xio->dev, xio);

 return (0);
}
