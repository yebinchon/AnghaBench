
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct mrsas_softc {int fast_path_io; int mrsas_dev; int raidmap_lock; int use_seqnum_jbod_fp; int pd_seq_map_id; int * jbod_seq_cmd; int mrsas_aen_triggered; int map_id; int * map_update_cmd; } ;
struct mrsas_mfi_cmd {TYPE_3__* frame; int sync_cmd; int * ccb_ptr; scalar_t__ retry_for_fw_reset; } ;
struct mrsas_header {int cmd_status; int cmd; } ;
struct TYPE_4__ {int* b; } ;
struct TYPE_5__ {int opcode; TYPE_1__ mbox; } ;
struct TYPE_6__ {TYPE_2__ dcmd; struct mrsas_header hdr; } ;
 int MFI_STAT_NOT_FOUND ;
 int MFI_STAT_OK ;
 int MR_DCMD_CTRL_EVENT_GET ;
 int MR_DCMD_CTRL_EVENT_GET_INFO ;
 int MR_DCMD_CTRL_EVENT_WAIT ;
 int MR_DCMD_LD_MAP_GET_INFO ;
 int MR_DCMD_SYSTEM_PD_MAP_GET_INFO ;
 int MR_ValidateMapInfo (struct mrsas_softc*) ;
 int device_printf (int ,char*,...) ;
 int megasas_sync_pd_seq_num (struct mrsas_softc*,int) ;
 int mrsas_complete_abort (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mrsas_complete_aen (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mrsas_release_mfi_cmd (struct mrsas_mfi_cmd*) ;
 int mrsas_sync_map_info (struct mrsas_softc*) ;
 int mrsas_wakeup (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
mrsas_complete_mptmfi_passthru(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd,
    u_int8_t status)
{
 struct mrsas_header *hdr = &cmd->frame->hdr;
 u_int8_t cmd_status = cmd->frame->hdr.cmd_status;


 cmd->retry_for_fw_reset = 0;

 if (cmd->ccb_ptr)
  cmd->ccb_ptr = ((void*)0);

 switch (hdr->cmd) {
 case 132:
  device_printf(sc->mrsas_dev, "MFI_CMD_INVALID command.\n");
  break;
 case 130:
 case 131:





  if (cmd->sync_cmd) {
   cmd->sync_cmd = 0;
   mrsas_wakeup(sc, cmd);
   break;
  }
 case 129:
 case 128:
 case 133:

  if ((cmd->frame->dcmd.opcode == MR_DCMD_LD_MAP_GET_INFO) &&
      (cmd->frame->dcmd.mbox.b[1] == 1)) {
   sc->fast_path_io = 0;
   mtx_lock(&sc->raidmap_lock);
   sc->map_update_cmd = ((void*)0);
   if (cmd_status != 0) {
    if (cmd_status != MFI_STAT_NOT_FOUND)
     device_printf(sc->mrsas_dev, "map sync failed, status=%x\n", cmd_status);
    else {
     mrsas_release_mfi_cmd(cmd);
     mtx_unlock(&sc->raidmap_lock);
     break;
    }
   } else
    sc->map_id++;
   mrsas_release_mfi_cmd(cmd);
   if (MR_ValidateMapInfo(sc))
    sc->fast_path_io = 0;
   else
    sc->fast_path_io = 1;
   mrsas_sync_map_info(sc);
   mtx_unlock(&sc->raidmap_lock);
   break;
  }
  if (cmd->frame->dcmd.opcode == MR_DCMD_CTRL_EVENT_GET_INFO ||
      cmd->frame->dcmd.opcode == MR_DCMD_CTRL_EVENT_GET) {
   sc->mrsas_aen_triggered = 0;
  }

  if ((cmd->frame->dcmd.opcode ==
      MR_DCMD_SYSTEM_PD_MAP_GET_INFO) &&
      (cmd->frame->dcmd.mbox.b[0] == 1)) {

   mtx_lock(&sc->raidmap_lock);
   sc->jbod_seq_cmd = ((void*)0);
   mrsas_release_mfi_cmd(cmd);

   if (cmd_status == MFI_STAT_OK) {
    sc->pd_seq_map_id++;

    if (megasas_sync_pd_seq_num(sc, 1))
     sc->use_seqnum_jbod_fp = 0;
   } else {
    sc->use_seqnum_jbod_fp = 0;
    device_printf(sc->mrsas_dev,
        "Jbod map sync failed, status=%x\n", cmd_status);
   }
   mtx_unlock(&sc->raidmap_lock);
   break;
  }

  if (cmd->frame->dcmd.opcode == MR_DCMD_CTRL_EVENT_WAIT)
   mrsas_complete_aen(sc, cmd);
  else
   mrsas_wakeup(sc, cmd);
  break;
 case 134:

  mrsas_complete_abort(sc, cmd);
  break;
 default:
  device_printf(sc->mrsas_dev, "Unknown command completed! [0x%X]\n", hdr->cmd);
  break;
 }
}
