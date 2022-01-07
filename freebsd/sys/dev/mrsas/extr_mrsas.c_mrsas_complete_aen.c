
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {scalar_t__ remove_in_progress; int mrsas_aen_triggered; int ev_task; int ev_tq; int * aen_cmd; int aen_lock; int mrsas_select; scalar_t__ mrsas_poll_waiting; } ;
struct mrsas_mfi_cmd {scalar_t__ abort_aen; } ;


 int mrsas_release_mfi_cmd (struct mrsas_mfi_cmd*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selwakeup (int *) ;
 int taskqueue_enqueue (int ,int *) ;

void
mrsas_complete_aen(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd)
{




 if ((!cmd->abort_aen) && (sc->remove_in_progress == 0)) {
  sc->mrsas_aen_triggered = 1;
  mtx_lock(&sc->aen_lock);
  if (sc->mrsas_poll_waiting) {
   sc->mrsas_poll_waiting = 0;
   selwakeup(&sc->mrsas_select);
  }
  mtx_unlock(&sc->aen_lock);
 } else
  cmd->abort_aen = 0;

 sc->aen_cmd = ((void*)0);
 mrsas_release_mfi_cmd(cmd);

 taskqueue_enqueue(sc->ev_tq, &sc->ev_task);

 return;
}
