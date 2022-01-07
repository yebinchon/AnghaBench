
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int task_attribute; scalar_t__ rddata; scalar_t__ wrdata; } ;
typedef TYPE_1__ fcp_cmnd_iu_t ;







 int OCS_SCSI_CMD_ACA ;
 int OCS_SCSI_CMD_DIR_IN ;
 int OCS_SCSI_CMD_DIR_OUT ;
 int OCS_SCSI_CMD_HEAD_OF_QUEUE ;
 int OCS_SCSI_CMD_ORDERED ;
 int OCS_SCSI_CMD_SIMPLE ;
 int OCS_SCSI_CMD_UNTAGGED ;

__attribute__((used)) static uint32_t
ocs_get_flags_fcp_cmd(fcp_cmnd_iu_t *cmnd)
{
 uint32_t flags = 0;
 switch (cmnd->task_attribute) {
 case 129:
  flags |= OCS_SCSI_CMD_SIMPLE;
  break;
 case 131:
  flags |= OCS_SCSI_CMD_HEAD_OF_QUEUE;
  break;
 case 130:
  flags |= OCS_SCSI_CMD_ORDERED;
  break;
 case 132:
  flags |= OCS_SCSI_CMD_ACA;
  break;
 case 128:
  flags |= OCS_SCSI_CMD_UNTAGGED;
  break;
 }
 if (cmnd->wrdata)
  flags |= OCS_SCSI_CMD_DIR_IN;
 if (cmnd->rddata)
  flags |= OCS_SCSI_CMD_DIR_OUT;

 return flags;
}
