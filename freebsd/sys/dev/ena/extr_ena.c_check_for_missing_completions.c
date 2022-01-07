
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {int dummy; } ;
struct ena_adapter {scalar_t__ missing_tx_timeout; int missing_tx_max_queues; int next_monitored_tx_qid; int num_queues; struct ena_ring* rx_ring; struct ena_ring* tx_ring; } ;


 int ENA_FLAG_DEV_UP ;
 scalar_t__ ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ;
 int check_for_rx_interrupt_queue (struct ena_adapter*,struct ena_ring*) ;
 int check_missing_comp_in_tx_queue (struct ena_adapter*,struct ena_ring*) ;
 int rmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
check_for_missing_completions(struct ena_adapter *adapter)
{
 struct ena_ring *tx_ring;
 struct ena_ring *rx_ring;
 int i, budget, rc;


 rmb();

 if (!ENA_FLAG_ISSET(ENA_FLAG_DEV_UP, adapter))
  return;

 if (ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter))
  return;

 if (adapter->missing_tx_timeout == ENA_HW_HINTS_NO_TIMEOUT)
  return;

 budget = adapter->missing_tx_max_queues;

 for (i = adapter->next_monitored_tx_qid; i < adapter->num_queues; i++) {
  tx_ring = &adapter->tx_ring[i];
  rx_ring = &adapter->rx_ring[i];

  rc = check_missing_comp_in_tx_queue(adapter, tx_ring);
  if (unlikely(rc != 0))
   return;

  rc = check_for_rx_interrupt_queue(adapter, rx_ring);
  if (unlikely(rc != 0))
   return;

  budget--;
  if (budget == 0) {
   i++;
   break;
  }
 }

 adapter->next_monitored_tx_qid = i % adapter->num_queues;
}
