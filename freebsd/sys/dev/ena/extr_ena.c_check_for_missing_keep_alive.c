
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wd_expired; } ;
struct ena_adapter {scalar_t__ wd_active; scalar_t__ keep_alive_timeout; int reset_reason; TYPE_1__ dev_stats; int pdev; int keep_alive_timestamp; } ;
typedef scalar_t__ sbintime_t ;


 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_SET_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ;
 int ENA_REGS_RESET_KEEP_ALIVE_TO ;
 scalar_t__ atomic_load_acq_64 (int *) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ getsbinuptime () ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_for_missing_keep_alive(struct ena_adapter *adapter)
{
 sbintime_t timestamp, time;

 if (adapter->wd_active == 0)
  return;

 if (adapter->keep_alive_timeout == ENA_HW_HINTS_NO_TIMEOUT)
  return;

 timestamp = atomic_load_acq_64(&adapter->keep_alive_timestamp);
 time = getsbinuptime() - timestamp;
 if (unlikely(time > adapter->keep_alive_timeout)) {
  device_printf(adapter->pdev,
      "Keep alive watchdog timeout.\n");
  counter_u64_add(adapter->dev_stats.wd_expired, 1);
  if (likely(!ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter))) {
   adapter->reset_reason = ENA_REGS_RESET_KEEP_ALIVE_TO;
   ENA_FLAG_SET_ATOMIC(ENA_FLAG_TRIGGER_RESET, adapter);
  }
 }
}
