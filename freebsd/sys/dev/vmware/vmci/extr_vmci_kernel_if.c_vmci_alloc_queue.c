
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct vmci_queue_kernel_if {size_t num_pages; struct vmci_dma_alloc* dmas; } ;
struct vmci_queue {struct vmci_queue_kernel_if* kernel_if; int * q_header; int * saved_header; } ;
struct vmci_dma_alloc {scalar_t__ dma_vaddr; } ;


 int ASSERT (int) ;
 int CEILING (scalar_t__,size_t) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 size_t PAGE_SIZE ;
 scalar_t__ VMCI_MAX_GUEST_QP_MEMORY ;
 struct vmci_queue* malloc (size_t const,int ,int ) ;
 int vmci_dma_malloc (size_t,int,struct vmci_dma_alloc*) ;
 int vmci_free_queue (struct vmci_queue*,size_t) ;

void *
vmci_alloc_queue(uint64_t size, uint32_t flags)
{
 struct vmci_queue *queue;
 size_t i;
 const size_t num_pages = CEILING(size, PAGE_SIZE) + 1;
 const size_t dmas_size = num_pages * sizeof(struct vmci_dma_alloc);
 const size_t queue_size =
     sizeof(*queue) + sizeof(*(queue->kernel_if)) + dmas_size;


 if (size > VMCI_MAX_GUEST_QP_MEMORY) {
  ASSERT(0);
  return (((void*)0));
 }

 queue = malloc(queue_size, M_DEVBUF, M_NOWAIT);
 if (!queue)
  return (((void*)0));

 queue->q_header = ((void*)0);
 queue->saved_header = ((void*)0);
 queue->kernel_if = (struct vmci_queue_kernel_if *)(queue + 1);
 queue->kernel_if->num_pages = num_pages;
 queue->kernel_if->dmas = (struct vmci_dma_alloc *)(queue->kernel_if +
     1);
 for (i = 0; i < num_pages; i++) {
  vmci_dma_malloc(PAGE_SIZE, 1, &queue->kernel_if->dmas[i]);
  if (!queue->kernel_if->dmas[i].dma_vaddr) {

   vmci_free_queue(queue, i * PAGE_SIZE);
   return (((void*)0));
  }
 }


 queue->q_header = (void *)queue->kernel_if->dmas[0].dma_vaddr;

 return ((void *)queue);
}
