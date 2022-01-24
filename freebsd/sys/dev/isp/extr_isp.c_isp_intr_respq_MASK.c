#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_56__   TYPE_8__ ;
typedef  struct TYPE_55__   TYPE_7__ ;
typedef  struct TYPE_54__   TYPE_6__ ;
typedef  struct TYPE_53__   TYPE_5__ ;
typedef  struct TYPE_52__   TYPE_4__ ;
typedef  struct TYPE_51__   TYPE_3__ ;
typedef  struct TYPE_50__   TYPE_2__ ;
typedef  struct TYPE_49__   TYPE_25__ ;
typedef  struct TYPE_48__   TYPE_1__ ;

/* Type definitions */
typedef  int uintmax_t ;
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int u_long ;
struct TYPE_51__ {int update; TYPE_2__* isp_devparam; } ;
typedef  TYPE_3__ sdparam ;
typedef  int /*<<< orphan*/  lb ;
struct TYPE_49__ {int rqs_entry_type; int rqs_flags; } ;
struct TYPE_52__ {int req_scsi_status; int req_completion_status; int req_status_flags; int req_state_flags; scalar_t__ req_resid; scalar_t__ req_response_len; scalar_t__ req_sense_len; int /*<<< orphan*/  req_handle; scalar_t__* req_sense_data; scalar_t__* req_response; TYPE_25__ req_header; } ;
typedef  TYPE_4__ ispstatusreq_t ;
struct TYPE_53__ {int /*<<< orphan*/  req_sense_data; } ;
typedef  TYPE_5__ ispstatus_cont_t ;
struct TYPE_54__ {scalar_t__ isp_state; int isp_revision; scalar_t__ isp_resodx; int isp_dblev; int /*<<< orphan*/  isp_respoutrp; int /*<<< orphan*/  isp_result; scalar_t__ isp_residx; int /*<<< orphan*/  isp_respinrp; } ;
typedef  TYPE_6__ ispsoftc_t ;
typedef  int /*<<< orphan*/  isphdr_t ;
struct TYPE_48__ {int rqs_seqno; } ;
struct TYPE_55__ {int /*<<< orphan*/ * req_handles; TYPE_1__ req_header; } ;
typedef  TYPE_7__ isp_rio1_t ;
struct TYPE_56__ {int req_scsi_status; int req_completion_status; scalar_t__ req_resid; scalar_t__ req_response_len; scalar_t__ req_sense_len; scalar_t__* req_rsp_sense; } ;
typedef  TYPE_8__ isp24xx_statusreq_t ;
typedef  int /*<<< orphan*/  XS_T ;
struct TYPE_50__ {int dev_refresh; } ;

/* Variables and functions */
 size_t FCP_RSPNS_CODE_OFFSET ; 
 int /*<<< orphan*/  HBA_BOTCH ; 
 int /*<<< orphan*/  HBA_BUSRESET ; 
 scalar_t__ HBA_NOERROR ; 
 int /*<<< orphan*/  HBA_TGTBSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ISP_LOGDEBUG0 ; 
 int ISP_LOGDEBUG1 ; 
 int /*<<< orphan*/  ISP_LOGDEBUG2 ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int /*<<< orphan*/  ISP_LOGINFO ; 
 int /*<<< orphan*/  ISP_LOGWARN ; 
 int ISP_LOG_CWARN ; 
 int /*<<< orphan*/  ISP_LOG_WARN1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ISP_RUNSTATE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_6__*) ; 
 scalar_t__ FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int QENTRY_LEN ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 scalar_t__ RQCS_ABORTED ; 
 scalar_t__ RQCS_RESET_OCCURRED ; 
 int RQCS_RESID ; 
 int RQCS_RV ; 
 int RQCS_SV ; 
 int RQSFLAG_BADCOUNT ; 
 int RQSFLAG_BADHEADER ; 
 int RQSFLAG_BADORDER ; 
 int RQSFLAG_BADPACKET ; 
 int RQSFLAG_CONTINUATION ; 
 int RQSFLAG_FULL ; 
 int RQSFLAG_MASK ; 
 int RQSF_GOT_SENSE ; 
 int RQSF_GOT_STATUS ; 
 int RQSF_XFER_COMPLETE ; 
 int RQSTF_BUS_RESET ; 
 int RQSTF_NEGOTIATION ; 
 int RQSTYPE_RESPONSE ; 
 int RQSTYPE_RIO1 ; 
 int RQSTYPE_RIO2 ; 
 int RQSTYPE_STATUS_CONT ; 
 int SCSI_BUSY ; 
 TYPE_3__* FUNC15 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  SYNC_RESULT ; 
 int* FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,scalar_t__) ; 
 int* FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC32 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_6__*,TYPE_8__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_6__*,TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_25__*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_6__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_6__*,TYPE_7__*,TYPE_7__*) ; 
 scalar_t__ FUNC38 (TYPE_6__*,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_6__*,TYPE_4__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_6__*,TYPE_8__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_6__*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_6__*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,char const*,int) ; 
 int FUNC44 (int,int) ; 
 char* notresp ; 

void
FUNC45(ispsoftc_t *isp)
{
	XS_T *xs, *cont_xs;
	uint8_t qe[QENTRY_LEN];
	ispstatusreq_t *sp = (ispstatusreq_t *)qe;
	isp24xx_statusreq_t *sp2 = (isp24xx_statusreq_t *)qe;
	isphdr_t *hp;
	uint8_t *resp, *snsp;
	int buddaboom, completion_status, cont = 0, etype, i;
	int req_status_flags, req_state_flags, scsi_status;
	uint32_t iptr, junk, cptr, optr, rlen, slen, sptr, totslen, resid;

	/*
	 * We can't be getting this now.
	 */
	if (isp->isp_state != ISP_RUNSTATE) {
		FUNC42(isp, ISP_LOGINFO, "respq interrupt when not ready");
		return;
	}

	iptr = FUNC4(isp, isp->isp_respinrp);
	/* Debounce the 2300 if revision less than 2. */
	if (FUNC8(isp) || (FUNC9(isp) && isp->isp_revision < 2)) {
		do {
			junk = iptr;
			iptr = FUNC4(isp, isp->isp_respinrp);
		} while (junk != iptr);
	}
	isp->isp_residx = iptr;

	optr = isp->isp_resodx;
	while (optr != iptr) {
		sptr = cptr = optr;
		hp = (isphdr_t *) FUNC3(isp->isp_result, cptr);
		optr = FUNC2(optr, FUNC14(isp));

		/*
		 * Synchronize our view of this response queue entry.
		 */
		FUNC13(isp, SYNC_RESULT, cptr, QENTRY_LEN, -1);
		if (isp->isp_dblev & ISP_LOGDEBUG1)
			FUNC41(isp, "Response Queue Entry", cptr, hp);
		FUNC35(isp, hp, &sp->req_header);
		etype = sp->req_header.rqs_entry_type;

		/* We expected Status Continuation, but got different IOCB. */
		if (cont > 0 && etype != RQSTYPE_STATUS_CONT) {
			cont = 0;
			FUNC30(cont_xs);
		}

		if (FUNC10(isp) && etype == RQSTYPE_RESPONSE) {
			FUNC33(isp, (isp24xx_statusreq_t *)hp, sp2);
			scsi_status = sp2->req_scsi_status;
			completion_status = sp2->req_completion_status;
			req_status_flags = 0;
			if ((scsi_status & 0xff) != 0)
				req_state_flags = RQSF_GOT_STATUS;
			else
				req_state_flags = 0;
			resid = sp2->req_resid;
		} else if (etype == RQSTYPE_RESPONSE) {
			FUNC36(isp, (ispstatusreq_t *) hp, sp);
			scsi_status = sp->req_scsi_status;
			completion_status = sp->req_completion_status;
			req_status_flags = sp->req_status_flags;
			req_state_flags = sp->req_state_flags;
			resid = sp->req_resid;
		} else if (etype == RQSTYPE_RIO1) {
			isp_rio1_t *rio = (isp_rio1_t *) qe;
			FUNC37(isp, (isp_rio1_t *) hp, rio);
			for (i = 0; i < rio->req_header.rqs_seqno; i++) {
				FUNC31(isp, rio->req_handles[i]);
			}
			FUNC1(hp, QENTRY_LEN);	/* PERF */
			continue;
		} else if (etype == RQSTYPE_RIO2) {
			FUNC42(isp, ISP_LOGERR, "dropping RIO2 response");
			FUNC1(hp, QENTRY_LEN);	/* PERF */
			continue;
		} else if (etype == RQSTYPE_STATUS_CONT) {
			ispstatus_cont_t *scp = (ispstatus_cont_t *)qe;
			FUNC34(isp, (ispstatus_cont_t *)hp, scp);
			if (cont > 0) {
				i = FUNC44(cont, sizeof(scp->req_sense_data));
				FUNC23(cont_xs, scp->req_sense_data, i);
				cont -= i;
				if (cont == 0) {
					FUNC30(cont_xs);
				} else {
					FUNC42(isp, ISP_LOGDEBUG0|ISP_LOG_CWARN,
					    "Expecting Status Continuations for %u bytes",
					    cont);
				}
			} else {
				FUNC42(isp, ISP_LOG_WARN1, "Ignored Continuation Response");
			}
			FUNC1(hp, QENTRY_LEN);	/* PERF */
			continue;
		} else if (FUNC38(isp, etype, hp, &cptr)) {
			/* More then one IOCB could be consumed. */
			while (sptr != cptr) {
				FUNC1(hp, QENTRY_LEN);	/* PERF */
				sptr = FUNC2(sptr, FUNC14(isp));
				hp = (isphdr_t *)FUNC3(isp->isp_result, sptr);
			}
			FUNC1(hp, QENTRY_LEN);	/* PERF */
			optr = FUNC2(cptr, FUNC14(isp));
			continue;
		} else {
			/* We don't know what was this -- log and skip. */
			FUNC42(isp, ISP_LOGERR, notresp, etype, cptr, optr);
			FUNC1(hp, QENTRY_LEN);	/* PERF */
			continue;
		}

		buddaboom = 0;
		if (sp->req_header.rqs_flags & RQSFLAG_MASK) {
			if (sp->req_header.rqs_flags & RQSFLAG_CONTINUATION) {
				FUNC41(isp, "unexpected continuation segment",
				    cptr, hp);
				continue;
			}
			if (sp->req_header.rqs_flags & RQSFLAG_FULL) {
				FUNC42(isp, ISP_LOG_WARN1, "internal queues full");
				/*
				 * We'll synthesize a QUEUE FULL message below.
				 */
			}
			if (sp->req_header.rqs_flags & RQSFLAG_BADHEADER) {
				FUNC41(isp, "bad header flag",
				    cptr, hp);
				buddaboom++;
			}
			if (sp->req_header.rqs_flags & RQSFLAG_BADPACKET) {
				FUNC41(isp, "bad request packet",
				    cptr, hp);
				buddaboom++;
			}
			if (sp->req_header.rqs_flags & RQSFLAG_BADCOUNT) {
				FUNC41(isp, "invalid entry count",
				    cptr, hp);
				buddaboom++;
			}
			if (sp->req_header.rqs_flags & RQSFLAG_BADORDER) {
				FUNC41(isp, "invalid IOCB ordering",
				    cptr, hp);
				continue;
			}
		}

		xs = FUNC32(isp, sp->req_handle);
		if (xs == NULL) {
			uint8_t ts = completion_status & 0xff;
			/*
			 * Only whine if this isn't the expected fallout of
			 * aborting the command or resetting the target.
			 */
			if (etype != RQSTYPE_RESPONSE) {
				FUNC42(isp, ISP_LOGERR, "cannot find handle 0x%x (type 0x%x)", sp->req_handle, etype);
			} else if (ts != RQCS_ABORTED && ts != RQCS_RESET_OCCURRED) {
				FUNC42(isp, ISP_LOGERR, "cannot find handle 0x%x (status 0x%x)", sp->req_handle, ts);
			}
			FUNC1(hp, QENTRY_LEN);	/* PERF */
			continue;
		}
		if (req_status_flags & RQSTF_BUS_RESET) {
			FUNC42(isp, ISP_LOG_WARN1, "%d.%d.%jx bus was reset",
			    FUNC17(xs), FUNC27(xs), (uintmax_t)FUNC20(xs));
			FUNC24(xs, HBA_BUSRESET);
			FUNC5(isp, FUNC17(xs), 1);
		}
		if (buddaboom) {
			FUNC42(isp, ISP_LOG_WARN1, "%d.%d.%jx buddaboom",
			    FUNC17(xs), FUNC27(xs), (uintmax_t)FUNC20(xs));
			FUNC24(xs, HBA_BOTCH);
		}

		resp = snsp = NULL;
		rlen = slen = totslen = 0;
		if (FUNC10(isp) && (scsi_status & (RQCS_RV|RQCS_SV)) != 0) {
			resp = sp2->req_rsp_sense;
			rlen = sp2->req_response_len;
		} else if (FUNC11(isp) && (scsi_status & RQCS_RV) != 0) {
			resp = sp->req_response;
			rlen = sp->req_response_len;
		}
		if (FUNC11(isp) && (scsi_status & RQCS_SV) != 0) {
			/*
			 * Fibre Channel F/W doesn't say we got status
			 * if there's Sense Data instead. I guess they
			 * think it goes w/o saying.
			 */
			req_state_flags |= RQSF_GOT_STATUS|RQSF_GOT_SENSE;
			if (FUNC10(isp)) {
				snsp = sp2->req_rsp_sense;
				snsp += rlen;
				totslen = sp2->req_sense_len;
				slen = sizeof(sp2->req_rsp_sense) - rlen;
			} else {
				snsp = sp->req_sense_data;
				totslen = sp->req_sense_len;
				slen = sizeof(sp->req_sense_data);
			}
		} else if (FUNC12(isp) && (req_state_flags & RQSF_GOT_SENSE)) {
			snsp = sp->req_sense_data;
			totslen = sp->req_sense_len;
			slen = sizeof (sp->req_sense_data);
		}
		if (slen > totslen)
			slen = totslen;
		if (req_state_flags & RQSF_GOT_STATUS)
			*FUNC26(xs) = scsi_status & 0xff;

		if (rlen >= 4 && resp[FCP_RSPNS_CODE_OFFSET] != 0) {
			const char *ptr;
			char lb[64];
			const char *rnames[10] = {
			    "Task Management function complete",
			    "FCP_DATA length different than FCP_BURST_LEN",
			    "FCP_CMND fields invalid",
			    "FCP_DATA parameter mismatch with FCP_DATA_RO",
			    "Task Management function rejected",
			    "Task Management function failed",
			    NULL,
			    NULL,
			    "Task Management function succeeded",
			    "Task Management function incorrect logical unit number",
			};
			uint8_t code = resp[FCP_RSPNS_CODE_OFFSET];
			if (code >= 10 || rnames[code] == NULL) {
				FUNC6(lb, sizeof(lb),
				    "Unknown FCP Response Code 0x%x", code);
				ptr = lb;
			} else {
				ptr = rnames[code];
			}
			FUNC43(isp, xs, ISP_LOGWARN,
			    "FCP RESPONSE, LENGTH %u: %s CDB0=0x%02x",
			    rlen, ptr, FUNC16(xs)[0] & 0xff);
			if (code != 0 && code != 8)
				FUNC24(xs, HBA_BOTCH);
		}
		if (FUNC10(isp))
			FUNC40(isp, sp2, xs, &resid);
		else
			FUNC39(isp, sp, xs, &resid);
		if ((FUNC21(xs) || FUNC18(xs) == HBA_NOERROR) &&
		    (*FUNC26(xs) == SCSI_BUSY))
			FUNC24(xs, HBA_TGTBSY);
		if (FUNC12(isp)) {
			FUNC25(xs, resid);
			/*
			 * A new synchronous rate was negotiated for
			 * this target. Mark state such that we'll go
			 * look up that which has changed later.
			 */
			if (req_status_flags & RQSTF_NEGOTIATION) {
				int t = FUNC27(xs);
				sdparam *sdp = FUNC15(isp, FUNC17(xs));
				sdp->isp_devparam[t].dev_refresh = 1;
				sdp->update = 1;
			}
		} else {
			if (req_status_flags & RQSF_XFER_COMPLETE) {
				FUNC25(xs, 0);
			} else if (scsi_status & RQCS_RESID) {
				FUNC25(xs, resid);
			} else {
				FUNC25(xs, 0);
			}
		}
		if (slen > 0) {
			FUNC22(xs, snsp, slen);
			if (totslen > slen) {
				cont = totslen - slen;
				cont_xs = xs;
				FUNC42(isp, ISP_LOGDEBUG0|ISP_LOG_CWARN,
				    "Expecting Status Continuations for %u bytes",
				    cont);
			}
		}
		FUNC42(isp, ISP_LOGDEBUG2, "asked for %lu got raw resid %lu settled for %lu",
		    (u_long)FUNC28(xs), (u_long)resid, (u_long)FUNC19(xs));

		if (FUNC28(xs))
			FUNC0(isp, xs, sp->req_handle);
		FUNC29(isp, sp->req_handle);

		FUNC1(hp, QENTRY_LEN);	/* PERF */

		/* Complete command if we expect no Status Continuations. */
		if (cont == 0)
			FUNC30(xs);
	}

	/* We haven't received all Status Continuations, but that is it. */
	if (cont > 0)
		FUNC30(cont_xs);

	/* If we processed any IOCBs, let ISP know about it. */
	if (optr != isp->isp_resodx) {
		FUNC7(isp, isp->isp_respoutrp, optr);
		isp->isp_resodx = optr;
	}
}