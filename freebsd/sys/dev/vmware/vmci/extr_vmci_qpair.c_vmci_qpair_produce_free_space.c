
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_queue_header {int dummy; } ;
struct vmci_qpair {int produce_q_size; } ;
typedef int int64_t ;


 int VMCI_ERROR_INVALID_ARGS ;
 int vmci_qpair_get_queue_headers (struct vmci_qpair const*,struct vmci_queue_header**,struct vmci_queue_header**) ;
 int vmci_queue_header_free_space (struct vmci_queue_header*,struct vmci_queue_header*,int ) ;

int64_t
vmci_qpair_produce_free_space(const struct vmci_qpair *qpair)
{
 struct vmci_queue_header *consume_q_header;
 struct vmci_queue_header *produce_q_header;
 int64_t result;

 if (!qpair)
  return (VMCI_ERROR_INVALID_ARGS);

 vmci_qpair_get_queue_headers(qpair, &produce_q_header,
     &consume_q_header);
 result = vmci_queue_header_free_space(produce_q_header, consume_q_header,
     qpair->produce_q_size);

 return (result);
}
