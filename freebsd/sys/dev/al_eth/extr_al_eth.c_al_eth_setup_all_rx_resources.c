
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int num_rx_queues; int dev; } ;


 int al_eth_free_rx_resources (struct al_eth_adapter*,int) ;
 int al_eth_setup_rx_resources (struct al_eth_adapter*,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
al_eth_setup_all_rx_resources(struct al_eth_adapter *adapter)
{
 int i, rc = 0;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  rc = al_eth_setup_rx_resources(adapter, i);
  if (rc == 0)
   continue;

  device_printf(adapter->dev, "Allocation for Rx Queue %u failed\n", i);
  goto err_setup_rx;
 }
 return (0);

err_setup_rx:

 while (i--)
  al_eth_free_rx_resources(adapter, i);
 return (rc);
}
