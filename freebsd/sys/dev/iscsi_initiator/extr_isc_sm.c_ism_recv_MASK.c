#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  S; } ;
struct TYPE_31__ {int opcode; int /*<<< orphan*/  itt; int /*<<< orphan*/ * OpcodeSpecificFields; } ;
struct TYPE_25__ {TYPE_6__ data_in; TYPE_7__ bhs; } ;
struct TYPE_26__ {TYPE_1__ ipdu; } ;
struct TYPE_28__ {TYPE_2__ pdu; } ;
typedef  TYPE_4__ pduq_t ;
struct TYPE_27__ {scalar_t__ expCmd; int stat; int /*<<< orphan*/  maxCmd; } ;
struct TYPE_29__ {int /*<<< orphan*/  rsp; TYPE_3__ sn; } ;
typedef  TYPE_5__ isc_session_t ;
typedef  TYPE_6__ data_in_t ;
typedef  TYPE_7__ bhs_t ;
struct TYPE_32__ {scalar_t__ cmd; int expCmd; } ;

/* Variables and functions */
#define  ISCSI_ASYNC 137 
#define  ISCSI_LOGIN_RSP 136 
#define  ISCSI_LOGOUT_RSP 135 
#define  ISCSI_NOP_IN 134 
#define  ISCSI_R2T 133 
#define  ISCSI_READ_DATA 132 
#define  ISCSI_REJECT 131 
#define  ISCSI_SCSI_RSP 130 
#define  ISCSI_TASK_RSP 129 
#define  ISCSI_TEXT_RSP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 TYPE_8__* sn ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(isc_session_t *sp, pduq_t *pq)
{
     bhs_t	*bhs;
     int	statSN;

     FUNC6(8);

     bhs = &pq->pdu.ipdu.bhs;
     statSN = FUNC8(bhs->OpcodeSpecificFields[1]);

#ifdef notyet
     if(sp->sn.expCmd != sn->cmd) {
	  sdebug(1, "we lost something ... exp=0x%x cmd=0x%x",
		 sn->expCmd, sn->cmd);
     }
#endif
     FUNC9(5, "opcode=0x%x itt=0x%x stat#0x%x maxcmd=0x%0x",
	    bhs->opcode, FUNC8(bhs->itt), statSN, sp->sn.maxCmd);

     switch(bhs->opcode) {
     case ISCSI_READ_DATA: {
	  data_in_t 	*cmd = &pq->pdu.ipdu.data_in;

	  if(cmd->S == 0)
	       break;
     }

     default:
	  if(statSN > (sp->sn.stat + 1)) {
	       FUNC9(1, "we lost some rec=0x%x exp=0x%x",
		      statSN, sp->sn.stat);
	       // XXX: must do some error recovery here.
	  }
	  sp->sn.stat = statSN;
     }

     switch(bhs->opcode) {
     case ISCSI_LOGIN_RSP:
     case ISCSI_TEXT_RSP:
     case ISCSI_LOGOUT_RSP:
	  FUNC7(sp, pq);
	  FUNC10(&sp->rsp);
	  FUNC9(3, "wakeup rsp");
	  break;

     case ISCSI_NOP_IN:		FUNC1(sp, pq);	break;
     case ISCSI_SCSI_RSP:	FUNC5(sp, pq);	break;
     case ISCSI_READ_DATA:	FUNC3(sp, pq);	break;
     case ISCSI_R2T:		FUNC2(sp, pq);		break;
     case ISCSI_REJECT:		FUNC4(sp, pq);	break;
     case ISCSI_ASYNC:		FUNC0(sp, pq);		break;

     case ISCSI_TASK_RSP:
     default:
	  FUNC9(1, "opcode=0x%x itt=0x%x not implemented yet",
		 bhs->opcode, FUNC8(bhs->itt));
	  break;
     }
}