
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_dma_alloc {int dummy; } ;


 int vmci_dma_free_int (int ,struct vmci_dma_alloc*) ;
 int vmci_sc ;

void
vmci_dma_free(struct vmci_dma_alloc *dma)
{

 vmci_dma_free_int(vmci_sc, dma);
}
