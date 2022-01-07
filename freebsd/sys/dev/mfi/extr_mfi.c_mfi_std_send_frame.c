
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mfi_softc {int mfi_dev; int (* mfi_issue_cmd ) (struct mfi_softc*,int ,int) ;} ;
struct mfi_frame_header {scalar_t__ cmd_status; int flags; } ;
struct mfi_command {int cm_flags; int cm_extra_frames; TYPE_2__* cm_frame; int cm_frame_busaddr; int cm_timestamp; } ;
struct TYPE_3__ {int opcode; } ;
struct TYPE_4__ {TYPE_1__ dcmd; struct mfi_frame_header header; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int MFI_CMD_POLLED ;
 int MFI_FRAME_DONT_POST_IN_REPLY_QUEUE ;
 scalar_t__ MFI_STAT_INVALID_STATUS ;
 int device_printf (int ,char*,struct mfi_frame_header*,int ) ;
 int mfi_enqueue_busy (struct mfi_command*) ;
 int mfi_polled_cmd_timeout ;
 int stub1 (struct mfi_softc*,int ,int) ;
 int time_uptime ;

__attribute__((used)) static int
mfi_std_send_frame(struct mfi_softc *sc, struct mfi_command *cm)
{
 struct mfi_frame_header *hdr;
 int tm = mfi_polled_cmd_timeout * 1000;

 hdr = &cm->cm_frame->header;

 if ((cm->cm_flags & MFI_CMD_POLLED) == 0) {
  cm->cm_timestamp = time_uptime;
  mfi_enqueue_busy(cm);
 } else {
  hdr->cmd_status = MFI_STAT_INVALID_STATUS;
  hdr->flags |= MFI_FRAME_DONT_POST_IN_REPLY_QUEUE;
 }
 if (cm->cm_extra_frames > 7)
  cm->cm_extra_frames = 7;

 sc->mfi_issue_cmd(sc, cm->cm_frame_busaddr, cm->cm_extra_frames);

 if ((cm->cm_flags & MFI_CMD_POLLED) == 0)
  return (0);


 while (hdr->cmd_status == MFI_STAT_INVALID_STATUS) {
  DELAY(1000);
  tm -= 1;
  if (tm <= 0)
   break;
 }

 if (hdr->cmd_status == MFI_STAT_INVALID_STATUS) {
  device_printf(sc->mfi_dev, "Frame %p timed out "
      "command 0x%X\n", hdr, cm->cm_frame->dcmd.opcode);
  return (ETIMEDOUT);
 }

 return (0);
}
