
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int sim_lock; } ;
struct mrsas_mpt_cmd {int callout_owner; int * ccb_ptr; int cm_callout; } ;


 int callout_stop (int *) ;
 int mrsas_release_mpt_cmd (struct mrsas_mpt_cmd*) ;
 int mrsas_unmap_request (struct mrsas_softc*,struct mrsas_mpt_cmd*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_done (int *) ;

void
mrsas_cmd_done(struct mrsas_softc *sc, struct mrsas_mpt_cmd *cmd)
{
 mrsas_unmap_request(sc, cmd);

 mtx_lock(&sc->sim_lock);
 if (cmd->callout_owner) {
  callout_stop(&cmd->cm_callout);
  cmd->callout_owner = 0;
 }
 xpt_done(cmd->ccb_ptr);
 cmd->ccb_ptr = ((void*)0);
 mtx_unlock(&sc->sim_lock);
 mrsas_release_mpt_cmd(cmd);
}
