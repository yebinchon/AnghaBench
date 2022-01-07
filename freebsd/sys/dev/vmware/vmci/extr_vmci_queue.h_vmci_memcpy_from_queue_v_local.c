
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmci_queue {int dummy; } ;


 int vmci_memcpy_from_queue_v (void*,size_t,struct vmci_queue const*,int ,size_t,int,int) ;

__attribute__((used)) static inline int
vmci_memcpy_from_queue_v_local(void *dest, size_t dest_offset,
    const struct vmci_queue *queue, uint64_t queue_offset, size_t size,
    int buf_type, bool can_block)
{

 return (vmci_memcpy_from_queue_v(dest, dest_offset, queue, queue_offset,
     size, buf_type, can_block));
}
