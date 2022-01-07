
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_int32_t ;
struct mrsas_softc {int mpt_cmd_pool_lock; int mrsas_mpt_cmd_list_head; } ;
struct mrsas_mpt_cmd {scalar_t__ io_request; scalar_t__ cmd_completed; int * peer_cmd; scalar_t__ sync_cmd_idx; int r1_alt_dev_handle; struct mrsas_softc* sc; } ;
typedef int MRSAS_RAID_SCSI_IO_REQUEST ;


 scalar_t__ MRSAS_ULONG_MAX ;
 int MR_DEVHANDLE_INVALID ;
 int TAILQ_INSERT_HEAD (int *,struct mrsas_mpt_cmd*,int ) ;
 int memset (int *,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;

void
mrsas_release_mpt_cmd(struct mrsas_mpt_cmd *cmd)
{
 struct mrsas_softc *sc = cmd->sc;

 mtx_lock(&sc->mpt_cmd_pool_lock);
 cmd->r1_alt_dev_handle = MR_DEVHANDLE_INVALID;
 cmd->sync_cmd_idx = (u_int32_t)MRSAS_ULONG_MAX;
 cmd->peer_cmd = ((void*)0);
 cmd->cmd_completed = 0;
 memset((uint8_t *)cmd->io_request, 0,
  sizeof(MRSAS_RAID_SCSI_IO_REQUEST));
 TAILQ_INSERT_HEAD(&(sc->mrsas_mpt_cmd_list_head), cmd, next);
 mtx_unlock(&sc->mpt_cmd_pool_lock);

 return;
}
