
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmci_queue {int dummy; } ;


 int vmci_memcpy_to_queue_v (struct vmci_queue*,int ,void const*,size_t,size_t,int,int) ;

__attribute__((used)) static inline int
vmci_memcpy_to_queue_v_local(struct vmci_queue *queue, uint64_t queue_offset,
   const void *src, size_t src_offset, size_t size, int buf_type,
   bool can_block)
{

 return (vmci_memcpy_to_queue_v(queue, queue_offset, src, src_offset,
     size, buf_type, can_block));
}
