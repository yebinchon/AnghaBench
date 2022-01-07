
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_softc {int mfi_cmd_tbolt_tqh; int mfi_io_lock; } ;
struct mfi_command {int cm_flags; int cm_extra_frames; int cm_index; } ;
struct mfi_cmd_tbolt {int index; int sync_cmd_idx; scalar_t__ io_request; scalar_t__ sg_frame; } ;


 int MA_OWNED ;
 int MEGASAS_MAX_SZ_CHAIN_FRAME ;
 int MEGASAS_THUNDERBOLT_NEW_MSG_SIZE ;
 int MFI_CMD_TBOLT ;
 struct mfi_cmd_tbolt* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mfi_cmd_tbolt*,int ) ;
 int memset (int *,int ,int ) ;
 int mtx_assert (int *,int ) ;
 int next ;

struct mfi_cmd_tbolt *
mfi_tbolt_get_cmd(struct mfi_softc *sc, struct mfi_command *mfi_cmd)
{
 struct mfi_cmd_tbolt *cmd = ((void*)0);

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 if ((cmd = TAILQ_FIRST(&sc->mfi_cmd_tbolt_tqh)) == ((void*)0))
  return (((void*)0));
 TAILQ_REMOVE(&sc->mfi_cmd_tbolt_tqh, cmd, next);
 memset((uint8_t *)cmd->sg_frame, 0, MEGASAS_MAX_SZ_CHAIN_FRAME);
 memset((uint8_t *)cmd->io_request, 0,
     MEGASAS_THUNDERBOLT_NEW_MSG_SIZE);

 cmd->sync_cmd_idx = mfi_cmd->cm_index;
 mfi_cmd->cm_extra_frames = cmd->index;
 mfi_cmd->cm_flags |= MFI_CMD_TBOLT;

 return cmd;
}
