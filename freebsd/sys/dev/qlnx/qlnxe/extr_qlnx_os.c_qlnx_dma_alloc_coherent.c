
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;
struct TYPE_10__ {int size; int alignment; void* dma_b; scalar_t__ dma_addr; scalar_t__ dma_tag; scalar_t__ dma_map; } ;
typedef TYPE_2__ qlnx_dma_t ;
typedef int device_t ;
typedef scalar_t__ bus_addr_t ;


 int PAGE_SIZE ;
 int QL_DPRINT5 (TYPE_1__*,char*,void*,void*,void*,void*,int) ;
 int bzero (int *,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ qlnx_alloc_dmabuf (TYPE_1__*,TYPE_2__*) ;

void *
qlnx_dma_alloc_coherent(void *ecore_dev, bus_addr_t *phys, uint32_t size)
{
 qlnx_dma_t dma_buf;
 qlnx_dma_t *dma_p;
 qlnx_host_t *ha;
 device_t dev;

 ha = (qlnx_host_t *)ecore_dev;
 dev = ha->pci_dev;

 size = (size + (PAGE_SIZE - 1)) & ~(PAGE_SIZE - 1);

 memset(&dma_buf, 0, sizeof (qlnx_dma_t));

 dma_buf.size = size + PAGE_SIZE;
 dma_buf.alignment = 8;

 if (qlnx_alloc_dmabuf((qlnx_host_t *)ecore_dev, &dma_buf) != 0)
  return (((void*)0));
 bzero((uint8_t *)dma_buf.dma_b, dma_buf.size);

 *phys = dma_buf.dma_addr;

 dma_p = (qlnx_dma_t *)((uint8_t *)dma_buf.dma_b + size);

 memcpy(dma_p, &dma_buf, sizeof(qlnx_dma_t));

 QL_DPRINT5(ha, "[%p %p %p %p 0x%08x ]\n",
  (void *)dma_buf.dma_map, (void *)dma_buf.dma_tag,
  dma_buf.dma_b, (void *)dma_buf.dma_addr, size);

 return (dma_buf.dma_b);
}
