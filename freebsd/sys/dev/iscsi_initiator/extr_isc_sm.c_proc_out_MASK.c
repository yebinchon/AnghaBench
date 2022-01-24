#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_21__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  itt; int /*<<< orphan*/  expStat; int /*<<< orphan*/  maxCmd; int /*<<< orphan*/  expCmd; int /*<<< orphan*/  cmd; int /*<<< orphan*/  stat; } ;
typedef  TYPE_3__ sn_t ;
struct TYPE_29__ {int opcode; void* itt; void* ExpStSN; int /*<<< orphan*/  I; void* CmdSN; } ;
struct TYPE_22__ {TYPE_7__ bhs; } ;
struct TYPE_27__ {TYPE_1__ ipdu; } ;
struct TYPE_26__ {TYPE_21__* ccb; TYPE_5__ pdu; } ;
typedef  TYPE_4__ pduq_t ;
typedef  TYPE_5__ pdu_t ;
struct TYPE_28__ {int flags; int /*<<< orphan*/  isc; TYPE_3__ sn; } ;
typedef  TYPE_6__ isc_session_t ;
typedef  TYPE_7__ bhs_t ;
struct TYPE_24__ {int /*<<< orphan*/  status; } ;
struct TYPE_23__ {TYPE_2__ ccb_h; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
#define  EAGAIN 137 
#define  EPIPE 136 
#define  ISCSI_LOGIN_CMD 135 
#define  ISCSI_LOGOUT_CMD 134 
#define  ISCSI_NOP_OUT 133 
#define  ISCSI_SCSI_CMD 132 
#define  ISCSI_SNACK 131 
#define  ISCSI_TASK_CMD 130 
#define  ISCSI_TEXT_CMD 129 
#define  ISCSI_WRITE_DATA 128 
 int ISC_LINK_UP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_4__*) ; 
 int FUNC9 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int
FUNC14(isc_session_t *sp)
{
     sn_t	*sn = &sp->sn;
     pduq_t	*pq;
     int	error, which;

     FUNC3(8);
     error = 0;

     while(sp->flags & ISC_LINK_UP) {
	  pdu_t *pp;
	  bhs_t	*bhs;
	  /*
	   | check if there is outstanding work in:
	   | 1- the Immediate queue
	   | 2- the R2T queue
	   | 3- the cmd queue, only if the command window allows it.
	   */
	  which = FUNC0(0) | FUNC0(1);
	  if(FUNC1(sn->cmd, sn->maxCmd) == 0) // if(sn->maxCmd - sn->smc + 1) > 0
	       which |= FUNC0(2);

	  FUNC12(4, "which=%d sn->maxCmd=%d sn->cmd=%d", which, sn->maxCmd, sn->cmd);

	  if((pq = FUNC5(sp, which)) == NULL)
	       break;
	  FUNC12(4, "pq=%p", pq);

	  pp = &pq->pdu;
	  bhs = &pp->ipdu.bhs;
	  switch(bhs->opcode) {
	  case ISCSI_SCSI_CMD:
	       sn->itt++;
	       bhs->itt = FUNC4(sn->itt);

	  case ISCSI_LOGIN_CMD:
	  case ISCSI_TEXT_CMD:
	  case ISCSI_LOGOUT_CMD:
	  case ISCSI_SNACK:
	  case ISCSI_NOP_OUT:
	  case ISCSI_TASK_CMD:
	       bhs->CmdSN = FUNC4(sn->cmd);
	       if(bhs->I == 0)
		    sn->cmd++;

	  case ISCSI_WRITE_DATA:
	       bhs->ExpStSN = FUNC4(sn->stat + 1);
	       break;

	  default:
	       // XXX: can this happen?
	       FUNC13("bad opcode=0x%x sn(cmd=0x%x expCmd=0x%x maxCmd=0x%x expStat=0x%x itt=0x%x)",
		      bhs->opcode,
		      sn->cmd, sn->expCmd, sn->maxCmd, sn->expStat, sn->itt);
	       // XXX: and now?
	  }

	  FUNC12(4, "opcode=0x%x sn(cmd=0x%x expCmd=0x%x maxCmd=0x%x expStat=0x%x itt=0x%x)",
		bhs->opcode,
		sn->cmd, sn->expCmd, sn->maxCmd, sn->expStat, sn->itt);

	  if(bhs->opcode != ISCSI_NOP_OUT)
	       /*
		| enqued till ack is received
		| note: sosend(...) does not mean the packet left
		| the host so that freeing resources has to wait
	        */
	       FUNC6(sp, pq);

	  error = FUNC9(sp, pq);
	  if(bhs->opcode == ISCSI_NOP_OUT)
	       FUNC11(sp->isc, pq);
	  if(error) {
	       FUNC13("error=%d opcode=0x%x ccb=%p itt=%x",
		      error, bhs->opcode, pq->ccb, FUNC10(bhs->itt));
	       FUNC7(sp, pq);
	       switch(error) {
	       case EPIPE:
		    sp->flags &= ~ISC_LINK_UP;

	       case EAGAIN:
		    FUNC13("requed");
		    FUNC8(sp, pq);
		    break;

	       default:
		    if(pq->ccb) {
			 FUNC13("back to cam");
			 pq->ccb->ccb_h.status |= CAM_REQUEUE_REQ; // some better error?
			 FUNC2(sp, pq->ccb);
			 FUNC11(sp->isc, pq);
		    }
		    else
			 FUNC13("we lost it!");
	       }
	  }
     }
     return error;
}