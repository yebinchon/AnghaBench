
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mrsas_softc {int mpt_cmd_pool_lock; int mrsas_mpt_cmd_list_head; } ;
struct mrsas_mpt_cmd {int * ccb_ptr; scalar_t__ load_balance; scalar_t__ error_code; scalar_t__ flags; scalar_t__ length; int * data; scalar_t__ io_request; } ;


 int MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE ;
 int TAILQ_EMPTY (int *) ;
 struct mrsas_mpt_cmd* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mrsas_mpt_cmd*,int ) ;
 int memset (int *,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;

struct mrsas_mpt_cmd *
mrsas_get_mpt_cmd(struct mrsas_softc *sc)
{
 struct mrsas_mpt_cmd *cmd = ((void*)0);

 mtx_lock(&sc->mpt_cmd_pool_lock);
 if (!TAILQ_EMPTY(&sc->mrsas_mpt_cmd_list_head)) {
  cmd = TAILQ_FIRST(&sc->mrsas_mpt_cmd_list_head);
  TAILQ_REMOVE(&sc->mrsas_mpt_cmd_list_head, cmd, next);
 } else {
  goto out;
 }

 memset((uint8_t *)cmd->io_request, 0, MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE);
 cmd->data = ((void*)0);
 cmd->length = 0;
 cmd->flags = 0;
 cmd->error_code = 0;
 cmd->load_balance = 0;
 cmd->ccb_ptr = ((void*)0);
out:
 mtx_unlock(&sc->mpt_cmd_pool_lock);
 return cmd;
}
