
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mfi_frame_header {scalar_t__ sg_count; } ;
struct mfi_command {int cm_flags; int cm_extra_frames; scalar_t__ retry_for_fw_reset; scalar_t__ cm_total_frame_size; TYPE_3__* cm_sg; int * cm_data; int * cm_private; int * cm_complete; TYPE_2__* cm_frame; TYPE_4__* cm_sc; } ;
struct TYPE_8__ {int * mfi_cmd_pool_tbolt; int mfi_io_lock; } ;
struct TYPE_7__ {TYPE_1__* sg32; } ;
struct TYPE_6__ {struct mfi_frame_header header; } ;
struct TYPE_5__ {scalar_t__ addr; scalar_t__ len; } ;


 int MA_OWNED ;
 int MFI_CMD_TBOLT ;
 int MFI_ON_MFIQ_BUSY ;
 int MFI_ON_MFIQ_MASK ;
 int MFI_ON_MFIQ_READY ;
 int mfi_enqueue_free (struct mfi_command*) ;
 int mfi_remove_busy (struct mfi_command*) ;
 int mfi_remove_ready (struct mfi_command*) ;
 int mfi_tbolt_return_cmd (TYPE_4__*,int ,struct mfi_command*) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,struct mfi_command*,int) ;

void
mfi_release_command(struct mfi_command *cm)
{
 struct mfi_frame_header *hdr;
 uint32_t *hdr_data;

 mtx_assert(&cm->cm_sc->mfi_io_lock, MA_OWNED);






 hdr = &cm->cm_frame->header;
 if (cm->cm_data != ((void*)0) && hdr->sg_count) {
  cm->cm_sg->sg32[0].len = 0;
  cm->cm_sg->sg32[0].addr = 0;
 }






 if ((cm->cm_flags & MFI_ON_MFIQ_BUSY) != 0)
  mfi_remove_busy(cm);
 if ((cm->cm_flags & MFI_ON_MFIQ_READY) != 0)
  mfi_remove_ready(cm);


 if ((cm->cm_flags & MFI_ON_MFIQ_MASK) != 0) {
  panic("Command %p is still on another queue, flags = %#x",
      cm, cm->cm_flags);
 }


 if ((cm->cm_flags & MFI_CMD_TBOLT) != 0) {
  mfi_tbolt_return_cmd(cm->cm_sc,
      cm->cm_sc->mfi_cmd_pool_tbolt[cm->cm_extra_frames - 1],
      cm);
 }

 hdr_data = (uint32_t *)cm->cm_frame;
 hdr_data[0] = 0;
 hdr_data[1] = 0;
 hdr_data[4] = 0;
 hdr_data[5] = 0;

 cm->cm_extra_frames = 0;
 cm->cm_flags = 0;
 cm->cm_complete = ((void*)0);
 cm->cm_private = ((void*)0);
 cm->cm_data = ((void*)0);
 cm->cm_sg = 0;
 cm->cm_total_frame_size = 0;
 cm->retry_for_fw_reset = 0;

 mfi_enqueue_free(cm);
}
