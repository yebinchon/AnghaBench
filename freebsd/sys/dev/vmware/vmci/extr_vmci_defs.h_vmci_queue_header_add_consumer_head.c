
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmci_queue_header {int consumer_head; } ;


 int qp_add_pointer (int *,size_t,int ) ;

__attribute__((used)) static inline void
vmci_queue_header_add_consumer_head(struct vmci_queue_header *q_header,
    size_t add, uint64_t queue_size)
{

 qp_add_pointer(&q_header->consumer_head, add, queue_size);
}
