
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmci_queue_header {int producer_tail; } ;


 int qp_atomic_read_offset (int *) ;

__attribute__((used)) static inline uint64_t
vmci_queue_header_producer_tail(const struct vmci_queue_header *q_header)
{
 struct vmci_queue_header *qh = (struct vmci_queue_header *)q_header;
 return (qp_atomic_read_offset(&qh->producer_tail));
}
