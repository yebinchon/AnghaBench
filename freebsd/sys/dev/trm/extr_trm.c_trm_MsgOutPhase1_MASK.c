#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  scalar_t__ u_int16_t ;
struct TYPE_8__ {int AdaptType; TYPE_2__* pActiveDCB; } ;
struct TYPE_7__ {int DCBFlag; int SyncMode; int IdentifyMsg; int MaxNegoPeriod; } ;
struct TYPE_6__ {int SRBState; scalar_t__ MsgCnt; scalar_t__* MsgOutBuf; scalar_t__* CmdBlock; int SRBFlag; } ;
typedef  TYPE_1__* PSRB ;
typedef  TYPE_2__* PDCB ;
typedef  TYPE_3__* PACB ;

/* Variables and functions */
 int ABORT_DEV_ ; 
 int AUTO_REQSENSE ; 
 int /*<<< orphan*/  DO_CLRFIFO ; 
 int /*<<< orphan*/  DO_DATALATCH ; 
 int EN_ATN_STOP ; 
 scalar_t__ INQUIRY ; 
 scalar_t__ MSG_ABORT ; 
 int MSG_EXTENDED ; 
 scalar_t__ REQUEST_SENSE ; 
 int SCMD_FIFO_OUT ; 
 int SRB_ABORT_SENT ; 
 int SRB_DO_SYNC_NEGO ; 
 int SRB_DO_WIDE_NEGO ; 
 int SRB_MSGOUT ; 
 int SYNC_NEGO_DONE ; 
 int SYNC_NEGO_ENABLE ; 
 int /*<<< orphan*/  TRMREG_SCSI_COMMAND ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRMREG_SCSI_FIFO ; 
 int WIDE_NEGO_DONE ; 
 int WIDE_NEGO_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{
	u_int8_t	bval;
	u_int16_t	i, cnt;
	u_int8_t *	ptr;
	PDCB		pDCB;

	FUNC0(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
	pDCB = pACB->pActiveDCB;
	if (!(pSRB->SRBState & SRB_MSGOUT)) {
		cnt = pSRB->MsgCnt;
		if (cnt) {
			ptr = (u_int8_t *) pSRB->MsgOutBuf;
			for (i = 0; i < cnt; i++) {
				FUNC1(*ptr, TRMREG_SCSI_FIFO);
				ptr++;
			}
			pSRB->MsgCnt = 0;
			if ((pDCB->DCBFlag & ABORT_DEV_) &&
			    (pSRB->MsgOutBuf[0] == MSG_ABORT)) {
				pSRB->SRBState = SRB_ABORT_SENT;
			}
		} else {
			bval = MSG_ABORT;	
			if ((pSRB->CmdBlock[0] == INQUIRY) ||
					(pSRB->CmdBlock[0] == REQUEST_SENSE) ||
					(pSRB->SRBFlag & AUTO_REQSENSE)) {
				if (pDCB->SyncMode & SYNC_NEGO_ENABLE) {
					goto  mop1;
				}
			}
			FUNC1(bval, TRMREG_SCSI_FIFO);
		}
	} else {
mop1:   /* message out phase */
		if (!(pSRB->SRBState & SRB_DO_WIDE_NEGO)
		    && (pDCB->SyncMode & WIDE_NEGO_ENABLE)) {
		  /*
	   	   * WIDE DATA TRANSFER REQUEST code (03h)
		   */
			pDCB->SyncMode &= ~(SYNC_NEGO_DONE | EN_ATN_STOP);
			FUNC1((pDCB->IdentifyMsg & 0xBF),
			    TRMREG_SCSI_FIFO); 
			FUNC1(MSG_EXTENDED,TRMREG_SCSI_FIFO);
			/* (01h) */
			FUNC1(2,TRMREG_SCSI_FIFO);	
			/* Message length (02h) */
			FUNC1(3,TRMREG_SCSI_FIFO);
			/* wide data xfer (03h) */
			FUNC1(1,TRMREG_SCSI_FIFO);
			/* width:0(8bit),1(16bit),2(32bit) */
			pSRB->SRBState |= SRB_DO_WIDE_NEGO; 
		} else if (!(pSRB->SRBState & SRB_DO_SYNC_NEGO) 
		    && (pDCB->SyncMode & SYNC_NEGO_ENABLE)) {
		  /*
	   	   * SYNCHRONOUS DATA TRANSFER REQUEST code (01h)
		   */
			if (!(pDCB->SyncMode & WIDE_NEGO_DONE))
				FUNC1((pDCB->IdentifyMsg & 0xBF),
						TRMREG_SCSI_FIFO);
			FUNC1(MSG_EXTENDED,TRMREG_SCSI_FIFO);
		  /* (01h) */
			FUNC1(3,TRMREG_SCSI_FIFO); 
		  /* Message length (03h) */
			FUNC1(1,TRMREG_SCSI_FIFO);
		  /* SYNCHRONOUS DATA TRANSFER REQUEST code (01h) */
			FUNC1(pDCB->MaxNegoPeriod,TRMREG_SCSI_FIFO);
		  /* Transfer peeriod factor */
			FUNC1((pACB->AdaptType == 1) ? 31 : 15,
			    TRMREG_SCSI_FIFO); 
		  /* REQ/ACK offset */
			pSRB->SRBState |= SRB_DO_SYNC_NEGO;
		}
	}
	FUNC0(DO_DATALATCH, TRMREG_SCSI_CONTROL);
	/* it's important for atn stop */
	/*
	 * SCSI cammand 
	 */
	FUNC1(SCMD_FIFO_OUT, TRMREG_SCSI_COMMAND);
}