
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct isci_softc {int device; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct isci_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int isci_sysctl_coalesce_number ;
 int isci_sysctl_coalesce_timeout ;
 int isci_sysctl_fail_on_task_timeout ;
 int isci_sysctl_log_frozen_lun_masks ;
 int isci_sysctl_reset_remote_device_on_controller0 ;
 int isci_sysctl_reset_remote_device_on_controller1 ;
 int isci_sysctl_start_phy ;
 int isci_sysctl_stop_phy ;

void isci_sysctl_initialize(struct isci_softc *isci)
{
 struct sysctl_ctx_list *sysctl_ctx = device_get_sysctl_ctx(isci->device);
 struct sysctl_oid *sysctl_tree = device_get_sysctl_tree(isci->device);

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "coalesce_timeout", CTLTYPE_UINT | CTLFLAG_RW, isci, 0,
     isci_sysctl_coalesce_timeout, "IU",
     "Interrupt coalescing timeout (in microseconds)");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "coalesce_number", CTLTYPE_UINT | CTLFLAG_RW, isci, 0,
     isci_sysctl_coalesce_number, "IU",
     "Interrupt coalescing number");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "reset_remote_device_on_controller0", CTLTYPE_UINT| CTLFLAG_RW,
     isci, 0, isci_sysctl_reset_remote_device_on_controller0, "IU",
     "Reset remote device on controller 0");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "reset_remote_device_on_controller1", CTLTYPE_UINT| CTLFLAG_RW,
     isci, 0, isci_sysctl_reset_remote_device_on_controller1, "IU",
     "Reset remote device on controller 1");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "stop_phy", CTLTYPE_UINT| CTLFLAG_RW, isci, 0, isci_sysctl_stop_phy,
     "IU", "Stop PHY on a controller");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "start_phy", CTLTYPE_UINT| CTLFLAG_RW, isci, 0,
     isci_sysctl_start_phy, "IU", "Start PHY on a controller");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "log_frozen_lun_masks", CTLTYPE_UINT| CTLFLAG_RW, isci, 0,
     isci_sysctl_log_frozen_lun_masks, "IU",
     "Log frozen lun masks to kernel log");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree), OID_AUTO,
     "fail_on_task_timeout", CTLTYPE_UINT | CTLFLAG_RW, isci, 0,
     isci_sysctl_fail_on_task_timeout, "IU",
     "Fail a command that has encountered a task management timeout");
}
