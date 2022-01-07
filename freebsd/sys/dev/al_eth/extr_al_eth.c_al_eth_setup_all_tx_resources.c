
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int num_tx_queues; int dev; } ;


 int al_eth_free_tx_resources (struct al_eth_adapter*,int) ;
 int al_eth_setup_tx_resources (struct al_eth_adapter*,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
al_eth_setup_all_tx_resources(struct al_eth_adapter *adapter)
{
 int i, rc = 0;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  rc = al_eth_setup_tx_resources(adapter, i);
  if (rc == 0)
   continue;

  device_printf(adapter->dev,
      "Allocation for Tx Queue %u failed\n", i);
  goto err_setup_tx;
 }

 return (0);

err_setup_tx:

 while (i--)
  al_eth_free_tx_resources(adapter, i);

 return (rc);
}
