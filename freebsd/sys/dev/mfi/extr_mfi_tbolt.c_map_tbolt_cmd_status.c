
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct mfi_command {int cm_error; TYPE_4__* cm_frame; } ;
struct TYPE_6__ {int cmd_status; int scsi_status; } ;
struct TYPE_7__ {TYPE_2__ header; } ;
struct TYPE_5__ {int cmd_status; int scsi_status; } ;
struct TYPE_8__ {TYPE_3__ dcmd; TYPE_1__ header; } ;
void
map_tbolt_cmd_status(struct mfi_command *mfi_cmd, uint8_t status,
    uint8_t ext_status)
{
 switch (status) {
 case 130:
  mfi_cmd->cm_frame->header.cmd_status = 130;
  mfi_cmd->cm_frame->dcmd.header.cmd_status = 130;
  mfi_cmd->cm_error = 130;
  break;

 case 128:
 case 132:
  mfi_cmd->cm_frame->header.cmd_status = status;
  mfi_cmd->cm_frame->header.scsi_status = ext_status;
  mfi_cmd->cm_frame->dcmd.header.cmd_status = status;
  mfi_cmd->cm_frame->dcmd.header.scsi_status
      = ext_status;
  break;

 case 129:
  mfi_cmd->cm_frame->header.cmd_status = ext_status;
  mfi_cmd->cm_frame->dcmd.header.cmd_status = ext_status;
  break;

 case 131:
 case 133:
  mfi_cmd->cm_frame->header.cmd_status = status;
  mfi_cmd->cm_frame->dcmd.header.cmd_status = status;
  break;

 default:
  mfi_cmd->cm_frame->header.cmd_status = status;
  mfi_cmd->cm_frame->dcmd.header.cmd_status = status;
  break;
 }
}
