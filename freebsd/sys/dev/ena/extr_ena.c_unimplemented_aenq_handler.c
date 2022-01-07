
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_admin_aenq_entry {int dummy; } ;
struct ena_adapter {int pdev; } ;


 int device_printf (int ,char*) ;

__attribute__((used)) static void
unimplemented_aenq_handler(void *adapter_data,
    struct ena_admin_aenq_entry *aenq_e)
{
 struct ena_adapter *adapter = (struct ena_adapter *)adapter_data;

 device_printf(adapter->pdev,
     "Unknown event was received or event with unimplemented handler\n");
}
