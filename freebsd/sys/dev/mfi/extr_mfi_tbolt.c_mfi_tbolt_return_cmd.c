
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_cmd_tbolt_tqh; int mfi_max_fw_cmds; int mfi_io_lock; } ;
struct mfi_command {scalar_t__ cm_extra_frames; int cm_flags; } ;
struct mfi_cmd_tbolt {int sync_cmd_idx; } ;


 int MA_OWNED ;
 int MFI_CMD_TBOLT ;
 int TAILQ_INSERT_TAIL (int *,struct mfi_cmd_tbolt*,int ) ;
 int mtx_assert (int *,int ) ;
 int next ;

void
mfi_tbolt_return_cmd(struct mfi_softc *sc, struct mfi_cmd_tbolt *tbolt_cmd,
    struct mfi_command *mfi_cmd)
{
 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 mfi_cmd->cm_flags &= ~MFI_CMD_TBOLT;
 mfi_cmd->cm_extra_frames = 0;
 tbolt_cmd->sync_cmd_idx = sc->mfi_max_fw_cmds;

 TAILQ_INSERT_TAIL(&sc->mfi_cmd_tbolt_tqh, tbolt_cmd, next);
}
