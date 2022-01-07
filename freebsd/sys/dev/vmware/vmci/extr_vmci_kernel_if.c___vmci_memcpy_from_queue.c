
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
struct vmci_queue_kernel_if {TYPE_1__* dmas; } ;
struct vmci_queue {struct vmci_queue_kernel_if* kernel_if; } ;
struct iovec {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_vaddr; } ;


 int ASSERT (void*) ;
 size_t MIN (size_t,size_t) ;
 size_t PAGE_SIZE ;
 int VMCI_SUCCESS ;
 int memcpy (int *,int *,size_t) ;
 int vmci_memcpy_toiovec (struct iovec*,int *,size_t) ;

__attribute__((used)) static int
__vmci_memcpy_from_queue(void *dest, const struct vmci_queue *queue,
    uint64_t queue_offset, size_t size, bool is_iovec)
{
 struct vmci_queue_kernel_if *kernel_if = queue->kernel_if;
 size_t bytes_copied = 0;

 while (bytes_copied < size) {
  const uint64_t page_index =
      (queue_offset + bytes_copied) / PAGE_SIZE;
  const size_t page_offset =
      (queue_offset + bytes_copied) & (PAGE_SIZE - 1);
  void *va;
  size_t to_copy;


  va = (void *)kernel_if->dmas[page_index + 1].dma_vaddr;

  ASSERT(va);




  to_copy = MIN(PAGE_SIZE - page_offset, size - bytes_copied);

  if (is_iovec) {
   struct iovec *iov = (struct iovec *)dest;


   vmci_memcpy_toiovec(iov, (uint8_t *)va +
       page_offset, to_copy);
  } else
   memcpy((uint8_t *)dest + bytes_copied,
       (uint8_t *)va + page_offset, to_copy);

  bytes_copied += to_copy;
 }

 return (VMCI_SUCCESS);
}
