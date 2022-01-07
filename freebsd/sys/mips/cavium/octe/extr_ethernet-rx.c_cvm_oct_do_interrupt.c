
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_POW_WQ_INT ;
 int FILTER_HANDLED ;
 scalar_t__ INTERRUPT_LIMIT ;
 int cvm_oct_task ;
 int cvm_oct_taskq ;
 int cvmx_write_csr (int ,int) ;
 int pow_receive_group ;
 int taskqueue_enqueue (int ,int *) ;

int cvm_oct_do_interrupt(void *dev_id)
{

 if (INTERRUPT_LIMIT)
  cvmx_write_csr(CVMX_POW_WQ_INT, 1<<pow_receive_group);
 else
  cvmx_write_csr(CVMX_POW_WQ_INT, 0x10001<<pow_receive_group);




 taskqueue_enqueue(cvm_oct_taskq, &cvm_oct_task);

 return FILTER_HANDLED;
}
