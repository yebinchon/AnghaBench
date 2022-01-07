
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int mfi_cmd_pool_lock; int mrsas_mfi_cmd_list_head; } ;
struct mrsas_mfi_cmd {int dummy; } ;


 int TAILQ_EMPTY (int *) ;
 struct mrsas_mfi_cmd* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mrsas_mfi_cmd*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;

struct mrsas_mfi_cmd *
mrsas_get_mfi_cmd(struct mrsas_softc *sc)
{
 struct mrsas_mfi_cmd *cmd = ((void*)0);

 mtx_lock(&sc->mfi_cmd_pool_lock);
 if (!TAILQ_EMPTY(&sc->mrsas_mfi_cmd_list_head)) {
  cmd = TAILQ_FIRST(&sc->mrsas_mfi_cmd_list_head);
  TAILQ_REMOVE(&sc->mrsas_mfi_cmd_list_head, cmd, next);
 }
 mtx_unlock(&sc->mfi_cmd_pool_lock);

 return cmd;
}
