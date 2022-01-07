
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int8_t ;
struct mrsas_tmp_dcmd {int tmp_dcmd_phys_addr; struct MR_LD_LIST* tmp_dcmd_mem; } ;
struct mrsas_softc {int fw_supported_vd_count; int CurLdCount; int* ld_ids; int mask_interrupts; int do_timedout_reset; TYPE_8__* target_list; scalar_t__ max256vdSupport; int mrsas_dev; } ;
struct mrsas_mfi_cmd {TYPE_1__* frame; } ;
struct TYPE_12__ {TYPE_3__* sge32; } ;
struct TYPE_10__ {int* b; } ;
struct mrsas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; scalar_t__ pad_0; TYPE_4__ sgl; int opcode; scalar_t__ timeout; int flags; int cmd; TYPE_2__ mbox; } ;
struct MR_LD_LIST {int ldCount; TYPE_7__* ldList; } ;
typedef int bus_addr_t ;
struct TYPE_16__ {int target_id; } ;
struct TYPE_13__ {int targetId; } ;
struct TYPE_14__ {TYPE_5__ ld_context; } ;
struct TYPE_15__ {scalar_t__ state; TYPE_6__ ref; } ;
struct TYPE_11__ {int length; int phys_addr; } ;
struct TYPE_9__ {struct mrsas_dcmd_frame dcmd; } ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int MAX_LOGICAL_DRIVES_EXT ;
 int MFI_CMD_DCMD ;
 int MFI_DCMD_TIMEOUT_OCR ;
 int MFI_FRAME_DIR_READ ;
 int MFI_MBOX_SIZE ;
 int MRSAS_MAX_PD ;
 int MR_DCMD_LD_GET_LIST ;
 int M_MRSAS ;
 int M_NOWAIT ;
 scalar_t__ SUCCESS ;
 int device_printf (int ,char*) ;
 int free (struct mrsas_tmp_dcmd*,int ) ;
 struct mrsas_tmp_dcmd* malloc (int,int ,int ) ;
 int memset (int*,int,int ) ;
 int mrsas_add_target (struct mrsas_softc*,int) ;
 scalar_t__ mrsas_alloc_tmp_dcmd (struct mrsas_softc*,struct mrsas_tmp_dcmd*,int) ;
 int mrsas_free_tmp_dcmd (struct mrsas_tmp_dcmd*) ;
 struct mrsas_mfi_cmd* mrsas_get_mfi_cmd (struct mrsas_softc*) ;
 int mrsas_issue_blocked_cmd (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mrsas_issue_polled (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mrsas_release_mfi_cmd (struct mrsas_mfi_cmd*) ;
 int mrsas_remove_target (struct mrsas_softc*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
mrsas_get_ld_list(struct mrsas_softc *sc)
{
 int ld_list_size, retcode = 0, ld_index = 0, ids = 0, drv_tgt_id;
 u_int8_t do_ocr = 1;
 struct mrsas_mfi_cmd *cmd;
 struct mrsas_dcmd_frame *dcmd;
 struct MR_LD_LIST *ld_list_mem;
 bus_addr_t ld_list_phys_addr = 0;
 struct mrsas_tmp_dcmd *tcmd;

 cmd = mrsas_get_mfi_cmd(sc);
 if (!cmd) {
  device_printf(sc->mrsas_dev,
      "Cannot alloc for get LD list cmd\n");
  return 1;
 }
 dcmd = &cmd->frame->dcmd;

 tcmd = malloc(sizeof(struct mrsas_tmp_dcmd), M_MRSAS, M_NOWAIT);
 ld_list_size = sizeof(struct MR_LD_LIST);
 if (mrsas_alloc_tmp_dcmd(sc, tcmd, ld_list_size) != SUCCESS) {
  device_printf(sc->mrsas_dev,
      "Cannot alloc dmamap for get LD list cmd\n");
  mrsas_release_mfi_cmd(cmd);
  mrsas_free_tmp_dcmd(tcmd);
  free(tcmd, M_MRSAS);
  return (ENOMEM);
 } else {
  ld_list_mem = tcmd->tmp_dcmd_mem;
  ld_list_phys_addr = tcmd->tmp_dcmd_phys_addr;
 }
 memset(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

 if (sc->max256vdSupport)
  dcmd->mbox.b[0] = 1;

 dcmd->cmd = MFI_CMD_DCMD;
 dcmd->cmd_status = 0xFF;
 dcmd->sge_count = 1;
 dcmd->flags = MFI_FRAME_DIR_READ;
 dcmd->timeout = 0;
 dcmd->data_xfer_len = sizeof(struct MR_LD_LIST);
 dcmd->opcode = MR_DCMD_LD_GET_LIST;
 dcmd->sgl.sge32[0].phys_addr = ld_list_phys_addr;
 dcmd->sgl.sge32[0].length = sizeof(struct MR_LD_LIST);
 dcmd->pad_0 = 0;

 if (!sc->mask_interrupts)
  retcode = mrsas_issue_blocked_cmd(sc, cmd);
 else
  retcode = mrsas_issue_polled(sc, cmd);

 if (retcode == ETIMEDOUT)
  goto dcmd_timeout;






 if (ld_list_mem->ldCount <= sc->fw_supported_vd_count) {
  sc->CurLdCount = ld_list_mem->ldCount;
  memset(sc->ld_ids, 0xff, MAX_LOGICAL_DRIVES_EXT);
  for (ld_index = 0; ld_index < ld_list_mem->ldCount; ld_index++) {
   ids = ld_list_mem->ldList[ld_index].ref.ld_context.targetId;
   drv_tgt_id = ids + MRSAS_MAX_PD;
   if (ld_list_mem->ldList[ld_index].state != 0) {
    sc->ld_ids[ids] = ld_list_mem->ldList[ld_index].ref.ld_context.targetId;
    if (sc->target_list[drv_tgt_id].target_id ==
     0xffff)
     mrsas_add_target(sc, drv_tgt_id);
   } else {
    if (sc->target_list[drv_tgt_id].target_id !=
     0xffff)
     mrsas_remove_target(sc,
      drv_tgt_id);
   }
  }

  do_ocr = 0;
 }
dcmd_timeout:
 mrsas_free_tmp_dcmd(tcmd);
 free(tcmd, M_MRSAS);

 if (do_ocr)
  sc->do_timedout_reset = MFI_DCMD_TIMEOUT_OCR;
 if (!sc->mask_interrupts)
  mrsas_release_mfi_cmd(cmd);

 return (retcode);
}
