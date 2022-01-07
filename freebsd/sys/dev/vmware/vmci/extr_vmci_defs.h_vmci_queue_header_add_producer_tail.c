
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmci_queue_header {int producer_tail; } ;


 int qp_add_pointer (int *,size_t,int ) ;

__attribute__((used)) static inline void
vmci_queue_header_add_producer_tail(struct vmci_queue_header *q_header,
    size_t add, uint64_t queue_size)
{

 qp_add_pointer(&q_header->producer_tail, add, queue_size);
}
