
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int admin_q_pause; } ;
struct ena_adapter {int reset_reason; TYPE_1__ dev_stats; int pdev; int ena_dev; } ;


 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_SET_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_ADMIN_TO ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int ena_com_get_admin_running_state (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_for_admin_com_state(struct ena_adapter *adapter)
{
 if (unlikely(ena_com_get_admin_running_state(adapter->ena_dev) ==
     0)) {
  device_printf(adapter->pdev,
      "ENA admin queue is not in running state!\n");
  counter_u64_add(adapter->dev_stats.admin_q_pause, 1);
  if (likely(!ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter))) {
   adapter->reset_reason = ENA_REGS_RESET_ADMIN_TO;
   ENA_FLAG_SET_ATOMIC(ENA_FLAG_TRIGGER_RESET, adapter);
  }
 }
}
