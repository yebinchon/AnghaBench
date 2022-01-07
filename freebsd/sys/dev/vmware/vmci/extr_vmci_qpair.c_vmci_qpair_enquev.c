
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qpair {int flags; int produce_q_size; int consume_q; int produce_q; } ;
typedef int ssize_t ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_QPFLAG_LOCAL ;
 int VMCI_QPFLAG_NONBLOCK ;
 int enqueue (int ,int ,int ,void*,size_t,int,int ,int) ;
 int vmci_memcpy_to_queue_v ;
 int vmci_memcpy_to_queue_v_local ;

ssize_t
vmci_qpair_enquev(struct vmci_qpair *qpair, void *iov, size_t iov_size,
    int buf_type)
{
 ssize_t result;

 if (!qpair || !iov)
  return (VMCI_ERROR_INVALID_ARGS);

 result = enqueue(qpair->produce_q, qpair->consume_q,
     qpair->produce_q_size, iov, iov_size, buf_type,
     qpair->flags & VMCI_QPFLAG_LOCAL?
     vmci_memcpy_to_queue_v_local : vmci_memcpy_to_queue_v,
     !(qpair->flags & VMCI_QPFLAG_NONBLOCK));

 return (result);
}
