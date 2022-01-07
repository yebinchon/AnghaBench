
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct ena_eth_io_intr_reg {int dummy; } ;
struct ena_com_io_cq {int dummy; } ;
struct ena_adapter {int num_queues; TYPE_1__* ena_dev; } ;
struct TYPE_2__ {struct ena_com_io_cq* io_cq_queues; } ;


 size_t ENA_IO_TXQ_IDX (int) ;
 int ena_com_unmask_intr (struct ena_com_io_cq*,struct ena_eth_io_intr_reg*) ;
 int ena_com_update_intr_reg (struct ena_eth_io_intr_reg*,int ,int ,int) ;

__attribute__((used)) static void
ena_unmask_all_io_irqs(struct ena_adapter *adapter)
{
 struct ena_com_io_cq* io_cq;
 struct ena_eth_io_intr_reg intr_reg;
 uint16_t ena_qid;
 int i;


 for (i = 0; i < adapter->num_queues; i++) {
  ena_qid = ENA_IO_TXQ_IDX(i);
  io_cq = &adapter->ena_dev->io_cq_queues[ena_qid];
  ena_com_update_intr_reg(&intr_reg, 0, 0, 1);
  ena_com_unmask_intr(io_cq, &intr_reg);
 }
}
