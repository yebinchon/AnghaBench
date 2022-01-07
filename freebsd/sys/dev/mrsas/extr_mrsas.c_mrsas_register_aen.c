
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ class; int locale; } ;
union mrsas_evt_class_locale {void* word; TYPE_1__ members; } ;
typedef void* u_int32_t ;
struct mrsas_softc {int mrsas_dev; struct mrsas_mfi_cmd* aen_cmd; scalar_t__ evt_detail_phys_addr; void* last_seq_num; int evt_detail_mem; } ;
struct mrsas_mfi_cmd {int abort_aen; TYPE_2__* frame; } ;
struct mrsas_evt_detail {int dummy; } ;
struct TYPE_10__ {TYPE_4__* sge32; } ;
struct TYPE_8__ {void** w; int b; } ;
struct mrsas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; TYPE_5__ sgl; TYPE_3__ mbox; int opcode; scalar_t__ pad_0; scalar_t__ timeout; int flags; int cmd; } ;
struct TYPE_9__ {int length; void* phys_addr; } ;
struct TYPE_7__ {struct mrsas_dcmd_frame dcmd; } ;


 int ENOMEM ;
 int MFI_CMD_DCMD ;
 int MFI_FRAME_DIR_READ ;
 int MFI_MBOX_SIZE ;
 int MR_DCMD_CTRL_EVENT_WAIT ;
 int device_printf (int ,char*) ;
 int memset (int ,int ,int) ;
 struct mrsas_mfi_cmd* mrsas_get_mfi_cmd (struct mrsas_softc*) ;
 int mrsas_issue_blocked_abort_cmd (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 scalar_t__ mrsas_issue_dcmd (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mrsas_release_mfi_cmd (struct mrsas_mfi_cmd*) ;
 int printf (char*) ;

__attribute__((used)) static int
mrsas_register_aen(struct mrsas_softc *sc, u_int32_t seq_num,
    u_int32_t class_locale_word)
{
 int ret_val;
 struct mrsas_mfi_cmd *cmd;
 struct mrsas_dcmd_frame *dcmd;
 union mrsas_evt_class_locale curr_aen;
 union mrsas_evt_class_locale prev_aen;
 curr_aen.word = class_locale_word;

 if (sc->aen_cmd) {

  prev_aen.word = sc->aen_cmd->frame->dcmd.mbox.w[1];
  if ((prev_aen.members.class <= curr_aen.members.class) &&
      !((prev_aen.members.locale & curr_aen.members.locale) ^
      curr_aen.members.locale)) {




   return 0;
  } else {
   curr_aen.members.locale |= prev_aen.members.locale;

   if (prev_aen.members.class < curr_aen.members.class)
    curr_aen.members.class = prev_aen.members.class;

   sc->aen_cmd->abort_aen = 1;
   ret_val = mrsas_issue_blocked_abort_cmd(sc,
       sc->aen_cmd);

   if (ret_val) {
    printf("mrsas: Failed to abort previous AEN command\n");
    return ret_val;
   } else
    sc->aen_cmd = ((void*)0);
  }
 }
 cmd = mrsas_get_mfi_cmd(sc);
 if (!cmd)
  return ENOMEM;

 dcmd = &cmd->frame->dcmd;

 memset(sc->evt_detail_mem, 0, sizeof(struct mrsas_evt_detail));




 memset(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

 dcmd->cmd = MFI_CMD_DCMD;
 dcmd->cmd_status = 0x0;
 dcmd->sge_count = 1;
 dcmd->flags = MFI_FRAME_DIR_READ;
 dcmd->timeout = 0;
 dcmd->pad_0 = 0;
 dcmd->data_xfer_len = sizeof(struct mrsas_evt_detail);
 dcmd->opcode = MR_DCMD_CTRL_EVENT_WAIT;
 dcmd->mbox.w[0] = seq_num;
 sc->last_seq_num = seq_num;
 dcmd->mbox.w[1] = curr_aen.word;
 dcmd->sgl.sge32[0].phys_addr = (u_int32_t)sc->evt_detail_phys_addr;
 dcmd->sgl.sge32[0].length = sizeof(struct mrsas_evt_detail);

 if (sc->aen_cmd != ((void*)0)) {
  mrsas_release_mfi_cmd(cmd);
  return 0;
 }





 sc->aen_cmd = cmd;




 if (mrsas_issue_dcmd(sc, cmd)) {
  device_printf(sc->mrsas_dev, "Cannot issue AEN DCMD command.\n");
  return (1);
 }
 return 0;
}
