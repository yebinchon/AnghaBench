
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_admin_ena_hw_hints {int dummy; } ;
struct TYPE_2__ {scalar_t__ group; int syndrom; } ;
struct ena_admin_aenq_entry {TYPE_1__ aenq_common_desc; int inline_data_w4; } ;
struct ena_adapter {int pdev; } ;


 scalar_t__ ENA_ADMIN_NOTIFICATION ;

 int ENA_WARN (int,char*,scalar_t__,scalar_t__) ;
 int device_printf (int ,char*,int) ;
 int ena_update_hints (struct ena_adapter*,struct ena_admin_ena_hw_hints*) ;

__attribute__((used)) static void ena_notification(void *adapter_data,
    struct ena_admin_aenq_entry *aenq_e)
{
 struct ena_adapter *adapter = (struct ena_adapter *)adapter_data;
 struct ena_admin_ena_hw_hints *hints;

 ENA_WARN(aenq_e->aenq_common_desc.group != ENA_ADMIN_NOTIFICATION,
     "Invalid group(%x) expected %x\n", aenq_e->aenq_common_desc.group,
     ENA_ADMIN_NOTIFICATION);

 switch (aenq_e->aenq_common_desc.syndrom) {
 case 128:
  hints =
      (struct ena_admin_ena_hw_hints *)(&aenq_e->inline_data_w4);
  ena_update_hints(adapter, hints);
  break;
 default:
  device_printf(adapter->pdev,
      "Invalid aenq notification link state %d\n",
      aenq_e->aenq_common_desc.syndrom);
 }
}
