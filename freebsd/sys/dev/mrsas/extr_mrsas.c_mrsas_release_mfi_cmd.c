
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct mrsas_softc {int mfi_cmd_pool_lock; int mrsas_mfi_cmd_list_head; int mpt_cmd_pool_lock; int mrsas_mpt_cmd_list_head; struct mrsas_mpt_cmd** mpt_cmd_list; } ;
struct TYPE_3__ {int smid; } ;
struct TYPE_4__ {scalar_t__ frame_count; TYPE_1__ context; } ;
struct mrsas_mpt_cmd {TYPE_2__ cmd_id; int * ccb_ptr; scalar_t__ sync_cmd_idx; scalar_t__ flags; struct mrsas_softc* sc; } ;
struct mrsas_mfi_cmd {TYPE_2__ cmd_id; int * ccb_ptr; scalar_t__ sync_cmd_idx; scalar_t__ flags; struct mrsas_softc* sc; } ;


 scalar_t__ MRSAS_ULONG_MAX ;
 int TAILQ_INSERT_HEAD (int *,struct mrsas_mpt_cmd*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;

void
mrsas_release_mfi_cmd(struct mrsas_mfi_cmd *cmd_mfi)
{
 struct mrsas_softc *sc = cmd_mfi->sc;
 struct mrsas_mpt_cmd *cmd_mpt;


 mtx_lock(&sc->mfi_cmd_pool_lock);




 if (cmd_mfi->cmd_id.context.smid) {
  mtx_lock(&sc->mpt_cmd_pool_lock);

  cmd_mpt = sc->mpt_cmd_list[cmd_mfi->cmd_id.context.smid-1];
  cmd_mpt->flags = 0;
  cmd_mpt->sync_cmd_idx = (u_int32_t)MRSAS_ULONG_MAX;
  TAILQ_INSERT_HEAD(&(sc->mrsas_mpt_cmd_list_head), cmd_mpt, next);
  mtx_unlock(&sc->mpt_cmd_pool_lock);
 }

 cmd_mfi->ccb_ptr = ((void*)0);
 cmd_mfi->cmd_id.frame_count = 0;
 TAILQ_INSERT_HEAD(&(sc->mrsas_mfi_cmd_list_head), cmd_mfi, next);
 mtx_unlock(&sc->mfi_cmd_pool_lock);

 return;
}
