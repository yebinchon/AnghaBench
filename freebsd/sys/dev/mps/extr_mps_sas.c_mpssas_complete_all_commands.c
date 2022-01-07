
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int num_reqs; scalar_t__ io_cmds_active; struct mps_command* commands; int mps_mtx; } ;
struct mps_command {scalar_t__ cm_state; int cm_flags; int cm_ccb; int (* cm_complete ) (struct mps_softc*,struct mps_command*) ;int * cm_data; int * cm_reply; } ;


 int MA_OWNED ;
 int MPASS (int *) ;
 int MPS_CM_FLAGS_COMPLETE ;
 int MPS_CM_FLAGS_POLLED ;
 int MPS_CM_FLAGS_SATA_ID_TIMEOUT ;
 int MPS_CM_FLAGS_WAKEUP ;
 scalar_t__ MPS_CM_STATE_BUSY ;
 scalar_t__ MPS_CM_STATE_FREE ;
 int MPS_FUNCTRACE (struct mps_softc*) ;
 int MPS_RECOVERY ;
 int M_MPT2 ;
 int free (int *,int ) ;
 int mpssas_log_command (struct mps_command*,int ,char*,struct mps_command*,scalar_t__,int,...) ;
 int mtx_assert (int *,int ) ;
 int stub1 (struct mps_softc*,struct mps_command*) ;
 int wakeup (struct mps_command*) ;

__attribute__((used)) static void
mpssas_complete_all_commands(struct mps_softc *sc)
{
 struct mps_command *cm;
 int i;
 int completed;

 MPS_FUNCTRACE(sc);
 mtx_assert(&sc->mps_mtx, MA_OWNED);


 for (i = 1; i < sc->num_reqs; i++) {
  cm = &sc->commands[i];
  if (cm->cm_state == MPS_CM_STATE_FREE)
   continue;

  cm->cm_state = MPS_CM_STATE_BUSY;
  cm->cm_reply = ((void*)0);
  completed = 0;

  if (cm->cm_flags & MPS_CM_FLAGS_SATA_ID_TIMEOUT) {
   MPASS(cm->cm_data);
   free(cm->cm_data, M_MPT2);
   cm->cm_data = ((void*)0);
  }

  if (cm->cm_flags & MPS_CM_FLAGS_POLLED)
   cm->cm_flags |= MPS_CM_FLAGS_COMPLETE;

  if (cm->cm_complete != ((void*)0)) {
   mpssas_log_command(cm, MPS_RECOVERY,
       "completing cm %p state %x ccb %p for diag reset\n",
       cm, cm->cm_state, cm->cm_ccb);

   cm->cm_complete(sc, cm);
   completed = 1;
  } else if (cm->cm_flags & MPS_CM_FLAGS_WAKEUP) {
   mpssas_log_command(cm, MPS_RECOVERY,
       "waking up cm %p state %x ccb %p for diag reset\n",
       cm, cm->cm_state, cm->cm_ccb);
   wakeup(cm);
   completed = 1;
  }

  if ((completed == 0) && (cm->cm_state != MPS_CM_STATE_FREE)) {

   mpssas_log_command(cm, MPS_RECOVERY,
       "cm %p state %x flags 0x%x ccb %p during diag "
       "reset\n", cm, cm->cm_state, cm->cm_flags,
       cm->cm_ccb);
  }
 }

 sc->io_cmds_active = 0;
}
