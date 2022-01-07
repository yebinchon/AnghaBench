
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct mrsas_softc {int do_timedout_reset; int el_info_mem; int el_info_phys_addr; int mrsas_dev; } ;
struct mrsas_mfi_cmd {TYPE_1__* frame; } ;
struct mrsas_evt_log_info {int dummy; } ;
struct TYPE_8__ {TYPE_3__* sge32; } ;
struct TYPE_6__ {int b; } ;
struct mrsas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; TYPE_4__ sgl; int opcode; scalar_t__ pad_0; scalar_t__ timeout; int flags; int cmd; TYPE_2__ mbox; } ;
struct TYPE_7__ {int length; int phys_addr; } ;
struct TYPE_5__ {struct mrsas_dcmd_frame dcmd; } ;


 int ENOMEM ;
 scalar_t__ ETIMEDOUT ;
 int MFI_CMD_DCMD ;
 int MFI_DCMD_TIMEOUT_OCR ;
 int MFI_FRAME_DIR_READ ;
 int MFI_MBOX_SIZE ;
 int MR_DCMD_CTRL_EVENT_GET_INFO ;
 scalar_t__ SUCCESS ;
 int device_printf (int ,char*) ;
 int memcpy (struct mrsas_evt_log_info*,int ,int) ;
 int memset (int ,int ,int ) ;
 scalar_t__ mrsas_alloc_evt_log_info_cmd (struct mrsas_softc*) ;
 int mrsas_free_evt_log_info_cmd (struct mrsas_softc*) ;
 struct mrsas_mfi_cmd* mrsas_get_mfi_cmd (struct mrsas_softc*) ;
 scalar_t__ mrsas_issue_blocked_cmd (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mrsas_release_mfi_cmd (struct mrsas_mfi_cmd*) ;

__attribute__((used)) static int
mrsas_get_seq_num(struct mrsas_softc *sc,
    struct mrsas_evt_log_info *eli)
{
 struct mrsas_mfi_cmd *cmd;
 struct mrsas_dcmd_frame *dcmd;
 u_int8_t do_ocr = 1, retcode = 0;

 cmd = mrsas_get_mfi_cmd(sc);

 if (!cmd) {
  device_printf(sc->mrsas_dev, "Failed to get a free cmd\n");
  return -ENOMEM;
 }
 dcmd = &cmd->frame->dcmd;

 if (mrsas_alloc_evt_log_info_cmd(sc) != SUCCESS) {
  device_printf(sc->mrsas_dev, "Cannot allocate evt log info cmd\n");
  mrsas_release_mfi_cmd(cmd);
  return -ENOMEM;
 }
 memset(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

 dcmd->cmd = MFI_CMD_DCMD;
 dcmd->cmd_status = 0x0;
 dcmd->sge_count = 1;
 dcmd->flags = MFI_FRAME_DIR_READ;
 dcmd->timeout = 0;
 dcmd->pad_0 = 0;
 dcmd->data_xfer_len = sizeof(struct mrsas_evt_log_info);
 dcmd->opcode = MR_DCMD_CTRL_EVENT_GET_INFO;
 dcmd->sgl.sge32[0].phys_addr = sc->el_info_phys_addr;
 dcmd->sgl.sge32[0].length = sizeof(struct mrsas_evt_log_info);

 retcode = mrsas_issue_blocked_cmd(sc, cmd);
 if (retcode == ETIMEDOUT)
  goto dcmd_timeout;

 do_ocr = 0;



 memcpy(eli, sc->el_info_mem, sizeof(struct mrsas_evt_log_info));
 mrsas_free_evt_log_info_cmd(sc);

dcmd_timeout:
 if (do_ocr)
  sc->do_timedout_reset = MFI_DCMD_TIMEOUT_OCR;
 else
  mrsas_release_mfi_cmd(cmd);

 return retcode;
}
