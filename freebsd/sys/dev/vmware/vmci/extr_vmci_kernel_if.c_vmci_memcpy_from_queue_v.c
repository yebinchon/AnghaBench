
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmci_queue {int dummy; } ;


 int ASSERT (int) ;
 int __vmci_memcpy_from_queue (void*,struct vmci_queue const*,int ,size_t,int) ;

int
vmci_memcpy_from_queue_v(void *dest, size_t dest_offset,
    const struct vmci_queue *queue, uint64_t queue_offset, size_t size,
    int buf_type, bool can_block)
{

 ASSERT(can_block);





 return (__vmci_memcpy_from_queue(dest, queue, queue_offset, size,
     1));
}
