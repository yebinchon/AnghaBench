
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_iommu {int dev; int * vmem; int p; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int mem_handle ;


 int ENXIO ;
 int M_FIRSTFIT ;
 int M_WAITOK ;
 scalar_t__ OF_getencprop (int ,char*,void*,int) ;
 int OF_hasprop (int ,char*) ;
 int OF_node_from_xref (int ) ;
 int PAGE_SIZE ;
 int XDMA_IOMMU_INIT (int ,struct xdma_iommu*) ;
 int ofw_bus_get_node (int ) ;
 int pmap_pinit (int *) ;
 int * vmem_create (char*,int ,int ,int ,int ,int) ;
 int vmem_destroy (int *) ;
 scalar_t__ xdma_handle_mem_node (int *,int ) ;

int
xdma_iommu_init(struct xdma_iommu *xio)
{





 pmap_pinit(&xio->p);
 xio->vmem = vmem_create("xDMA vmem", 0, 0, PAGE_SIZE,
     PAGE_SIZE, M_FIRSTFIT | M_WAITOK);
 if (xio->vmem == ((void*)0))
  return (ENXIO);
 XDMA_IOMMU_INIT(xio->dev, xio);

 return (0);
}
