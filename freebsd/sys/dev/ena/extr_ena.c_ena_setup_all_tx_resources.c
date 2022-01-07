
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int num_queues; int pdev; } ;


 int device_printf (int ,char*,int) ;
 int ena_free_tx_resources (struct ena_adapter*,int) ;
 int ena_setup_tx_resources (struct ena_adapter*,int) ;

__attribute__((used)) static int
ena_setup_all_tx_resources(struct ena_adapter *adapter)
{
 int i, rc;

 for (i = 0; i < adapter->num_queues; i++) {
  rc = ena_setup_tx_resources(adapter, i);
  if (rc != 0) {
   device_printf(adapter->pdev,
       "Allocation for Tx Queue %u failed\n", i);
   goto err_setup_tx;
  }
 }

 return (0);

err_setup_tx:

 while (i--)
  ena_free_tx_resources(adapter, i);
 return (rc);
}
