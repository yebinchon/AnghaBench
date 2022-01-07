
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_queue_header {int consumer_head; int producer_tail; } ;


 int CONST64U (int ) ;
 int qp_atomic_write_offset (int *,int ) ;

__attribute__((used)) static inline void
vmci_queue_header_reset_pointers(struct vmci_queue_header *q_header)
{

 qp_atomic_write_offset(&q_header->producer_tail, CONST64U(0));
 qp_atomic_write_offset(&q_header->consumer_head, CONST64U(0));
}
