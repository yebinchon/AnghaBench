
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union mfi_mpi2_request_descriptor {int words; } ;
typedef int uint8_t ;
struct mfi_softc {int mfi_dev; scalar_t__ adpreset; } ;
struct mfi_frame_header {scalar_t__ cmd_status; scalar_t__ cmd; int flags; } ;
struct mfi_command {int cm_flags; TYPE_3__* cm_frame; int cm_timestamp; } ;
struct TYPE_5__ {int opcode; } ;
struct TYPE_4__ {int* cdb; } ;
struct TYPE_6__ {TYPE_2__ dcmd; TYPE_1__ pass; struct mfi_frame_header header; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 scalar_t__ MFI_CMD_LD_READ ;
 scalar_t__ MFI_CMD_LD_SCSI_IO ;
 scalar_t__ MFI_CMD_LD_WRITE ;
 scalar_t__ MFI_CMD_PD_SCSI_IO ;
 int MFI_CMD_POLLED ;
 int MFI_CMD_SCSI ;
 int MFI_FRAME_DONT_POST_IN_REPLY_QUEUE ;
 int MFI_IHQP ;
 int MFI_ILQP ;
 scalar_t__ MFI_STAT_INVALID_STATUS ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;
 int device_printf (int ,char*,...) ;
 union mfi_mpi2_request_descriptor* mfi_build_and_issue_cmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_enqueue_busy (struct mfi_command*) ;
 int mfi_polled_cmd_timeout ;
 union mfi_mpi2_request_descriptor* mfi_tbolt_build_mpt_cmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_tbolt_complete_cmd (struct mfi_softc*) ;
 int time_uptime ;

int
mfi_tbolt_send_frame(struct mfi_softc *sc, struct mfi_command *cm)
{
 struct mfi_frame_header *hdr;
 uint8_t *cdb;
 union mfi_mpi2_request_descriptor *req_desc = ((void*)0);
 int tm = mfi_polled_cmd_timeout * 1000;

 hdr = &cm->cm_frame->header;
 cdb = cm->cm_frame->pass.cdb;
 if (sc->adpreset)
  return 1;
 if ((cm->cm_flags & MFI_CMD_POLLED) == 0) {
  cm->cm_timestamp = time_uptime;
  mfi_enqueue_busy(cm);
 } else {
  hdr->cmd_status = MFI_STAT_INVALID_STATUS;
  hdr->flags |= MFI_FRAME_DONT_POST_IN_REPLY_QUEUE;
 }

 if (hdr->cmd == MFI_CMD_PD_SCSI_IO) {

  if (cdb[0] != 0x28 || cdb[0] != 0x2A) {
   if ((req_desc = mfi_tbolt_build_mpt_cmd(sc, cm)) ==
       ((void*)0)) {
    device_printf(sc->mfi_dev, "Mapping from MFI "
        "to MPT Failed \n");
    return 1;
   }
  }
  else
   device_printf(sc->mfi_dev, "DJA NA XXX SYSPDIO\n");
 } else if (hdr->cmd == MFI_CMD_LD_SCSI_IO ||
     hdr->cmd == MFI_CMD_LD_READ || hdr->cmd == MFI_CMD_LD_WRITE) {
  cm->cm_flags |= MFI_CMD_SCSI;
  if ((req_desc = mfi_build_and_issue_cmd(sc, cm)) == ((void*)0)) {
   device_printf(sc->mfi_dev, "LDIO Failed \n");
   return 1;
  }
 } else if ((req_desc = mfi_tbolt_build_mpt_cmd(sc, cm)) == ((void*)0)) {
  device_printf(sc->mfi_dev, "Mapping from MFI to MPT Failed\n");
  return (1);
 }

 if (cm->cm_flags & MFI_CMD_SCSI) {





  hdr->flags &= ~MFI_FRAME_DONT_POST_IN_REPLY_QUEUE;
 }

 MFI_WRITE4(sc, MFI_ILQP, (req_desc->words & 0xFFFFFFFF));
 MFI_WRITE4(sc, MFI_IHQP, (req_desc->words >>0x20));

 if ((cm->cm_flags & MFI_CMD_POLLED) == 0)
  return 0;
 while (hdr->cmd_status == MFI_STAT_INVALID_STATUS) {
  DELAY(1000);
  tm -= 1;
  if (tm <= 0)
   break;
  if (cm->cm_flags & MFI_CMD_SCSI) {




   mfi_tbolt_complete_cmd(sc);
  }
 }


 mfi_tbolt_complete_cmd(sc);

 if (hdr->cmd_status == MFI_STAT_INVALID_STATUS) {
  device_printf(sc->mfi_dev, "Frame %p timed out "
      "command 0x%X\n", hdr, cm->cm_frame->dcmd.opcode);
  return (ETIMEDOUT);
 }
 return 0;
}
