
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int num_reqs; scalar_t__ io_cmds_active; struct mpr_command* commands; int mpr_mtx; } ;
struct mpr_command {scalar_t__ cm_state; int cm_flags; int cm_ccb; int (* cm_complete ) (struct mpr_softc*,struct mpr_command*) ;int * cm_data; int * cm_reply; } ;


 int MA_OWNED ;
 int MPASS (int *) ;
 int MPR_CM_FLAGS_COMPLETE ;
 int MPR_CM_FLAGS_POLLED ;
 int MPR_CM_FLAGS_SATA_ID_TIMEOUT ;
 int MPR_CM_FLAGS_WAKEUP ;
 scalar_t__ MPR_CM_STATE_BUSY ;
 scalar_t__ MPR_CM_STATE_FREE ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 int MPR_RECOVERY ;
 int M_MPR ;
 int free (int *,int ) ;
 int mprsas_log_command (struct mpr_command*,int ,char*,struct mpr_command*,scalar_t__,int,...) ;
 int mtx_assert (int *,int ) ;
 int stub1 (struct mpr_softc*,struct mpr_command*) ;
 int wakeup (struct mpr_command*) ;

__attribute__((used)) static void
mprsas_complete_all_commands(struct mpr_softc *sc)
{
 struct mpr_command *cm;
 int i;
 int completed;

 MPR_FUNCTRACE(sc);
 mtx_assert(&sc->mpr_mtx, MA_OWNED);


 for (i = 1; i < sc->num_reqs; i++) {
  cm = &sc->commands[i];
  if (cm->cm_state == MPR_CM_STATE_FREE)
   continue;

  cm->cm_state = MPR_CM_STATE_BUSY;
  cm->cm_reply = ((void*)0);
  completed = 0;

  if (cm->cm_flags & MPR_CM_FLAGS_SATA_ID_TIMEOUT) {
   MPASS(cm->cm_data);
   free(cm->cm_data, M_MPR);
   cm->cm_data = ((void*)0);
  }

  if (cm->cm_flags & MPR_CM_FLAGS_POLLED)
   cm->cm_flags |= MPR_CM_FLAGS_COMPLETE;

  if (cm->cm_complete != ((void*)0)) {
   mprsas_log_command(cm, MPR_RECOVERY,
       "completing cm %p state %x ccb %p for diag reset\n",
       cm, cm->cm_state, cm->cm_ccb);
   cm->cm_complete(sc, cm);
   completed = 1;
  } else if (cm->cm_flags & MPR_CM_FLAGS_WAKEUP) {
   mprsas_log_command(cm, MPR_RECOVERY,
       "waking up cm %p state %x ccb %p for diag reset\n",
       cm, cm->cm_state, cm->cm_ccb);
   wakeup(cm);
   completed = 1;
  }

  if ((completed == 0) && (cm->cm_state != MPR_CM_STATE_FREE)) {

   mprsas_log_command(cm, MPR_RECOVERY,
       "cm %p state %x flags 0x%x ccb %p during diag "
       "reset\n", cm, cm->cm_state, cm->cm_flags,
       cm->cm_ccb);
  }
 }

 sc->io_cmds_active = 0;
}
