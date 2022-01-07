
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_ring {int cmpl_is_running; int unmask_val; int unmask_reg_offset; } ;


 int al_data_memory_barrier () ;
 int al_eth_irq_config (int ,int ) ;
 int al_eth_tx_do_cleanup (struct al_eth_ring*) ;
 scalar_t__ napi ;

__attribute__((used)) static void
al_eth_tx_cmpl_work(void *arg, int pending)
{
 struct al_eth_ring *tx_ring = arg;

 if (napi != 0) {
  tx_ring->cmpl_is_running = 1;
  al_data_memory_barrier();
 }

 al_eth_tx_do_cleanup(tx_ring);

 if (napi != 0) {
  tx_ring->cmpl_is_running = 0;
  al_data_memory_barrier();
 }

 al_eth_irq_config(tx_ring->unmask_reg_offset, tx_ring->unmask_val);
}
