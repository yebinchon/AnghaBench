#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct ccb_hdr {int flags; int /*<<< orphan*/  status; int /*<<< orphan*/  target_lun; TYPE_6__* spriv_ptr0; } ;
struct TYPE_19__ {int /*<<< orphan*/  cdb_bytes; int /*<<< orphan*/  cdb_ptr; } ;
struct ccb_scsiio {int tag_action; int cdb_len; int /*<<< orphan*/  dxfer_len; TYPE_3__ cdb_io; } ;
union ccb {struct ccb_hdr ccb_h; struct ccb_scsiio csio; } ;
typedef  int /*<<< orphan*/  u_char ;
struct cam_sim {int dummy; } ;
struct TYPE_20__ {int F; int W; int R; int /*<<< orphan*/  edtlen; int /*<<< orphan*/  cdb; int /*<<< orphan*/  lun; void* attr; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_4__ scsi_req_t ;
struct TYPE_17__ {TYPE_4__ scsi_req; } ;
struct TYPE_18__ {TYPE_1__ ipdu; } ;
struct TYPE_21__ {union ccb* ccb; TYPE_2__ pdu; } ;
typedef  TYPE_5__ pduq_t ;
struct TYPE_22__ {TYPE_7__* isc; } ;
typedef  TYPE_6__ isc_session_t ;
struct TYPE_23__ {int /*<<< orphan*/  npdu_alloc; int /*<<< orphan*/  npdu_max; } ;

/* Variables and functions */
 int CAM_CDB_PHYS ; 
 int CAM_CDB_POINTER ; 
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 int CAM_DIR_OUT ; 
 int /*<<< orphan*/  CAM_REQ_INVALID ; 
 int /*<<< orphan*/  ISCSI_SCSI_CMD ; 
#define  MSG_ACA_TASK 131 
#define  MSG_HEAD_OF_Q_TAG 130 
#define  MSG_ORDERED_Q_TAG 129 
#define  MSG_SIMPLE_Q_TAG 128 
 int /*<<< orphan*/  M_NOWAIT ; 
 TYPE_6__* FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int hz ; 
 void* iSCSI_TASK_ACA ; 
 void* iSCSI_TASK_HOFQ ; 
 void* iSCSI_TASK_ORDER ; 
 void* iSCSI_TASK_SIMPLE ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 TYPE_5__* FUNC8 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,long) ; 

int
FUNC13(struct cam_sim *sim, union ccb *ccb)
{
     isc_session_t	*sp = FUNC0(sim);
     struct ccb_scsiio	*csio = &ccb->csio;
     struct ccb_hdr	*ccb_h = &ccb->ccb_h;
     pduq_t		*pq;
     scsi_req_t		*cmd;

     FUNC2(8);

     FUNC1(4, "ccb->sp=%p", ccb_h->spriv_ptr0);
     sp = ccb_h->spriv_ptr0;

     if((pq = FUNC8(sp->isc, M_NOWAIT)) == NULL) {
	  FUNC1(2, "ccb->sp=%p", ccb_h->spriv_ptr0);
	  FUNC10(1, "pdu_alloc failed sc->npdu_max=%d npdu_alloc=%d",
		 sp->isc->npdu_max, sp->isc->npdu_alloc);
	  while((pq = FUNC8(sp->isc, M_NOWAIT)) == NULL) {
	       FUNC10(2, "waiting...");
#if __FreeBSD_version >= 700000
	       pause("isc_encap", 5*hz);
#else
	       FUNC11(sp->isc, 0, "isc_encap", 5*hz);
#endif
	  }
     }
     cmd = &pq->pdu.ipdu.scsi_req;
     cmd->opcode = ISCSI_SCSI_CMD;
     cmd->F = 1;
#if 0
// this breaks at least Isilon's iscsi target.
     /*
      | map tag option, default is UNTAGGED
      */
     switch(csio->tag_action) {
     case MSG_SIMPLE_Q_TAG:	cmd->attr = iSCSI_TASK_SIMPLE;	break;
     case MSG_HEAD_OF_Q_TAG:	cmd->attr = iSCSI_TASK_HOFQ;	break;
     case MSG_ORDERED_Q_TAG:	cmd->attr = iSCSI_TASK_ORDER;	break;
     case MSG_ACA_TASK:		cmd->attr = iSCSI_TASK_ACA;	break;
     }
#else
     cmd->attr = iSCSI_TASK_SIMPLE;
#endif

     FUNC3(sp, ccb_h->target_lun, (u_char *)&cmd->lun);

     if((ccb_h->flags & CAM_CDB_POINTER) != 0) {
	  if((ccb_h->flags & CAM_CDB_PHYS) == 0) {
	       if(csio->cdb_len > 16) {
		    FUNC10(3, "oversize cdb %d > 16", csio->cdb_len);
		    goto invalid;
	       }
	  }
	  else {
	       FUNC10(3, "not phys");
	       goto invalid;
	  }
     }

     if(csio->cdb_len > sizeof(cmd->cdb))
	  FUNC12("guevalt! %d > %ld", csio->cdb_len, (long)sizeof(cmd->cdb));

     FUNC6(cmd->cdb,
	    ccb_h->flags & CAM_CDB_POINTER? csio->cdb_io.cdb_ptr: csio->cdb_io.cdb_bytes,
	    csio->cdb_len);

     cmd->W = (ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT;
     cmd->R = (ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN;
     cmd->edtlen = FUNC4(csio->dxfer_len);

     pq->ccb = ccb;
     /*
      | place it in the out queue
      */
     if(FUNC5(sp, pq) == 0)
	  return 1; 
 invalid:
     ccb->ccb_h.status = CAM_REQ_INVALID;
     FUNC9(sp->isc, pq);

     return 0;
}