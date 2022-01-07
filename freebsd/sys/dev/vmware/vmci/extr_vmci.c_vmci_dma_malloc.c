
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_dma_alloc {int dummy; } ;
typedef int bus_size_t ;


 int vmci_dma_malloc_int (int ,int ,int ,struct vmci_dma_alloc*) ;
 int vmci_sc ;

int
vmci_dma_malloc(bus_size_t size, bus_size_t align, struct vmci_dma_alloc *dma)
{

 return (vmci_dma_malloc_int(vmci_sc, size, align, dma));
}
