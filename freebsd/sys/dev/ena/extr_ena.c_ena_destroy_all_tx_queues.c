
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ena_adapter {int num_queues; int ena_dev; } ;


 int ENA_IO_TXQ_IDX (int) ;
 int ena_com_destroy_io_queue (int ,int ) ;

__attribute__((used)) static void
ena_destroy_all_tx_queues(struct ena_adapter *adapter)
{
 uint16_t ena_qid;
 int i;

 for (i = 0; i < adapter->num_queues; i++) {
  ena_qid = ENA_IO_TXQ_IDX(i);
  ena_com_destroy_io_queue(adapter->ena_dev, ena_qid);
 }
}
