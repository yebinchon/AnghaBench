
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uintmax_t ;
struct TYPE_8__ {int inots; } ;
typedef TYPE_2__ tgt_resource_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_7__ {int status; scalar_t__ target_lun; } ;
struct ccb_immediate_notify {int initiator_id; TYPE_1__ ccb_h; int arg; scalar_t__ seq_id; int tag_id; } ;
typedef int request_t ;
struct TYPE_9__ {union ccb* ccb; int tag_id; } ;
typedef TYPE_3__ mpt_tgt_state_t ;
typedef int mpt_task_mgmt_t ;
struct TYPE_10__ {int stqe; } ;


 int CAM_MESSAGE_RECV ;




 int MPT_PRT_DEBUG1 ;
 int MPT_PRT_WARN ;



 TYPE_3__* MPT_TGT_STATE (struct mpt_softc*,int *) ;
 int MSG_ABORT_TASK_SET ;
 int MSG_CLEAR_ACA ;
 int MSG_CLEAR_TASK_SET ;
 int MSG_LOGICAL_UNIT_RESET ;
 int MSG_NOOP ;
 int MSG_QUERY_ASYNC_EVENT ;
 int MSG_QUERY_TASK_SET ;
 int MSG_TARGET_RESET ;
 int SCSI_STATUS_BUSY ;
 scalar_t__ STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,...) ;
 int mpt_scsi_tgt_status (struct mpt_softc*,int *,int *,int ,int *,int ) ;
 TYPE_4__ sim_links ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mpt_scsi_tgt_tsk_mgmt(struct mpt_softc *mpt, request_t *req, mpt_task_mgmt_t fc,
    tgt_resource_t *trtp, int init_id)
{
 struct ccb_immediate_notify *inot;
 mpt_tgt_state_t *tgt;

 tgt = MPT_TGT_STATE(mpt, req);
 inot = (struct ccb_immediate_notify *) STAILQ_FIRST(&trtp->inots);
 if (inot == ((void*)0)) {
  mpt_lprt(mpt, MPT_PRT_WARN, "no INOTSs- sending back BSY\n");
  mpt_scsi_tgt_status(mpt, ((void*)0), req, SCSI_STATUS_BUSY, ((void*)0), 0);
  return;
 }
 STAILQ_REMOVE_HEAD(&trtp->inots, sim_links.stqe);
 mpt_lprt(mpt, MPT_PRT_DEBUG1,
     "Get FREE INOT %p lun %jx\n", inot,
     (uintmax_t)inot->ccb_h.target_lun);

 inot->initiator_id = init_id;
 inot->tag_id = tgt->tag_id;
 inot->seq_id = 0;




 switch (fc) {
 case 129:
  inot->arg = MSG_QUERY_TASK_SET;
  break;
 case 134:
  inot->arg = MSG_ABORT_TASK_SET;
  break;
 case 132:
  inot->arg = MSG_CLEAR_TASK_SET;
  break;
 case 130:
  inot->arg = MSG_QUERY_ASYNC_EVENT;
  break;
 case 131:
  inot->arg = MSG_LOGICAL_UNIT_RESET;
  break;
 case 128:
  inot->arg = MSG_TARGET_RESET;
  break;
 case 133:
  inot->arg = MSG_CLEAR_ACA;
  break;
 default:
  inot->arg = MSG_NOOP;
  break;
 }
 tgt->ccb = (union ccb *) inot;
 inot->ccb_h.status = CAM_MESSAGE_RECV;
 xpt_done((union ccb *)inot);
}
