
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t target_id; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mpssas_target {int handle; } ;
struct mpssas_softc {size_t maxtargets; struct mpssas_target* targets; struct mps_softc* sc; } ;
struct mps_softc {int mps_mtx; } ;
struct mps_command {struct mpssas_target* cm_targ; union ccb* cm_complete_data; int cm_complete; int * cm_data; scalar_t__ cm_req; } ;
struct TYPE_4__ {int MsgFlags; int TaskType; int DevHandle; } ;
typedef TYPE_2__ MPI2_SCSI_TASK_MANAGE_REQUEST ;


 int CAM_LUN_WILDCARD ;
 int CAM_RESRC_UNAVAIL ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET ;
 int MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET ;
 int MPS_ERROR ;
 int MPS_FUNCTRACE (struct mps_softc*) ;
 int htole16 (int ) ;
 int mps_dprint (struct mps_softc*,int ,char*) ;
 int mps_map_command (struct mps_softc*,struct mps_command*) ;
 struct mps_command* mpssas_alloc_tm (struct mps_softc*) ;
 int mpssas_prepare_for_tm (struct mps_softc*,struct mps_command*,struct mpssas_target*,int ) ;
 int mpssas_resetdev_complete ;
 int mpssas_set_ccbstatus (union ccb*,int ) ;
 int mtx_assert (int *,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mpssas_action_resetdev(struct mpssas_softc *sassc, union ccb *ccb)
{
 MPI2_SCSI_TASK_MANAGE_REQUEST *req;
 struct mps_softc *sc;
 struct mps_command *tm;
 struct mpssas_target *targ;

 MPS_FUNCTRACE(sassc->sc);
 mtx_assert(&sassc->sc->mps_mtx, MA_OWNED);

 KASSERT(ccb->ccb_h.target_id < sassc->maxtargets,
     ("Target %d out of bounds in XPT_RESET_DEV\n",
      ccb->ccb_h.target_id));
 sc = sassc->sc;
 tm = mpssas_alloc_tm(sc);
 if (tm == ((void*)0)) {
  mps_dprint(sc, MPS_ERROR,
      "command alloc failure in mpssas_action_resetdev\n");
  mpssas_set_ccbstatus(ccb, CAM_RESRC_UNAVAIL);
  xpt_done(ccb);
  return;
 }

 targ = &sassc->targets[ccb->ccb_h.target_id];
 req = (MPI2_SCSI_TASK_MANAGE_REQUEST *)tm->cm_req;
 req->DevHandle = htole16(targ->handle);
 req->TaskType = MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET;


 req->MsgFlags = MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET;

 tm->cm_data = ((void*)0);
 tm->cm_complete = mpssas_resetdev_complete;
 tm->cm_complete_data = ccb;
 tm->cm_targ = targ;

 mpssas_prepare_for_tm(sc, tm, targ, CAM_LUN_WILDCARD);
 mps_map_command(sc, tm);
}
