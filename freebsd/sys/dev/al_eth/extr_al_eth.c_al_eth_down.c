
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int up; int stats_mtx; int stats_callout; int wd_mtx; int wd_callout; int dev; } ;


 int al_eth_disable_int_sync (struct al_eth_adapter*) ;
 int al_eth_free_all_rx_resources (struct al_eth_adapter*) ;
 int al_eth_free_all_tx_resources (struct al_eth_adapter*) ;
 int al_eth_free_irq (struct al_eth_adapter*) ;
 int al_eth_hw_stop (struct al_eth_adapter*) ;
 int callout_stop (int *) ;
 int device_printf_dbg (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
al_eth_down(struct al_eth_adapter *adapter)
{

 device_printf_dbg(adapter->dev, "al_eth_down: begin\n");

 adapter->up = 0;

 mtx_lock(&adapter->wd_mtx);
 callout_stop(&adapter->wd_callout);
 mtx_unlock(&adapter->wd_mtx);

 al_eth_disable_int_sync(adapter);

 mtx_lock(&adapter->stats_mtx);
 callout_stop(&adapter->stats_callout);
 mtx_unlock(&adapter->stats_mtx);

 al_eth_free_irq(adapter);
 al_eth_hw_stop(adapter);

 al_eth_free_all_tx_resources(adapter);
 al_eth_free_all_rx_resources(adapter);
}
