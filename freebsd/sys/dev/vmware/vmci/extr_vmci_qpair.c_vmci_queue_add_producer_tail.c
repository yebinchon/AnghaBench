
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmci_queue {int q_header; } ;


 int VMCI_SUCCESS ;
 int vmci_queue_header_add_producer_tail (int ,size_t,int ) ;

__attribute__((used)) static inline int
vmci_queue_add_producer_tail(struct vmci_queue *queue,
    size_t add, uint64_t queue_size)
{

 vmci_queue_header_add_producer_tail(queue->q_header, add, queue_size);
 return (VMCI_SUCCESS);
}
