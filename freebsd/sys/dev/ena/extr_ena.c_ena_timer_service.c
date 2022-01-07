
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ena_admin_host_info {int dummy; } ;
struct ena_adapter {int timer_service; int reset_task; int reset_tq; int pdev; int ifp; TYPE_2__* ena_dev; } ;
struct TYPE_3__ {struct ena_admin_host_info* host_info; } ;
struct TYPE_4__ {TYPE_1__ host_attr; } ;


 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 int SBT_1S ;
 int callout_schedule_sbt (int *,int ,int ,int ) ;
 int check_for_admin_com_state (struct ena_adapter*) ;
 int check_for_empty_rx_ring (struct ena_adapter*) ;
 int check_for_missing_completions (struct ena_adapter*) ;
 int check_for_missing_keep_alive (struct ena_adapter*) ;
 int device_printf (int ,char*) ;
 int ena_update_host_info (struct ena_admin_host_info*,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
ena_timer_service(void *data)
{
 struct ena_adapter *adapter = (struct ena_adapter *)data;
 struct ena_admin_host_info *host_info =
     adapter->ena_dev->host_attr.host_info;

 check_for_missing_keep_alive(adapter);

 check_for_admin_com_state(adapter);

 check_for_missing_completions(adapter);

 check_for_empty_rx_ring(adapter);

 if (host_info != ((void*)0))
  ena_update_host_info(host_info, adapter->ifp);

 if (unlikely(ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter))) {
  device_printf(adapter->pdev, "Trigger reset is on\n");
  taskqueue_enqueue(adapter->reset_tq, &adapter->reset_task);
  return;
 }




 callout_schedule_sbt(&adapter->timer_service, SBT_1S, SBT_1S, 0);
}
