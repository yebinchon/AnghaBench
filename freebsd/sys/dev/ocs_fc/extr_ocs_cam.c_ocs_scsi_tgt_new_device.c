
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ enable_task_set_full; } ;
typedef TYPE_1__ ocs_t ;
typedef int int32_t ;


 int OCS_SCSI_ENABLE_TASK_SET_FULL ;
 int ocs_log_debug (TYPE_1__*,char*,char*) ;
 scalar_t__ ocs_scsi_get_property (TYPE_1__*,int ) ;

int32_t
ocs_scsi_tgt_new_device(ocs_t *ocs)
{
 ocs->enable_task_set_full = ocs_scsi_get_property(ocs,
     OCS_SCSI_ENABLE_TASK_SET_FULL);
 ocs_log_debug(ocs, "task set full processing is %s\n",
  ocs->enable_task_set_full ? "enabled" : "disabled");

 return 0;
}
