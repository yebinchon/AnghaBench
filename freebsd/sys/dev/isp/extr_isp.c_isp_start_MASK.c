#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_55__   TYPE_9__ ;
typedef  struct TYPE_54__   TYPE_8__ ;
typedef  struct TYPE_53__   TYPE_7__ ;
typedef  struct TYPE_52__   TYPE_6__ ;
typedef  struct TYPE_51__   TYPE_5__ ;
typedef  struct TYPE_50__   TYPE_4__ ;
typedef  struct TYPE_49__   TYPE_3__ ;
typedef  struct TYPE_48__   TYPE_2__ ;
typedef  struct TYPE_47__   TYPE_1__ ;
typedef  struct TYPE_46__   TYPE_14__ ;
typedef  struct TYPE_45__   TYPE_13__ ;
typedef  struct TYPE_44__   TYPE_12__ ;
typedef  struct TYPE_43__   TYPE_11__ ;
typedef  struct TYPE_42__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_51__ {TYPE_4__* isp_devparam; scalar_t__ update; } ;
typedef  TYPE_5__ sdparam ;
struct TYPE_52__ {scalar_t__ isp_state; } ;
typedef  TYPE_6__ ispsoftc_t ;
struct TYPE_53__ {int req_task_attribute; int req_tidlo; int req_tidhi; void* req_cdb; int /*<<< orphan*/  req_time; int /*<<< orphan*/  req_crn; int /*<<< orphan*/  req_lun; int /*<<< orphan*/  req_vpidx; int /*<<< orphan*/  req_nphdl; } ;
typedef  TYPE_7__ ispreqt7_t ;
struct TYPE_54__ {void* req_cdb; int /*<<< orphan*/  req_time; void* req_scclun; int /*<<< orphan*/  req_target; } ;
typedef  TYPE_8__ ispreqt2e_t ;
struct TYPE_55__ {void* req_cdb; int /*<<< orphan*/  req_time; void* req_lun_trn; int /*<<< orphan*/  req_target; void* req_scclun; int /*<<< orphan*/  req_crn; void* req_flags; } ;
typedef  TYPE_9__ ispreqt2_t ;
struct TYPE_49__ {int rqs_entry_count; int /*<<< orphan*/  rqs_entry_type; } ;
struct TYPE_42__ {int req_target; int req_cdblen; scalar_t__ req_handle; void* req_cdb; int /*<<< orphan*/  req_time; void* req_lun_trn; void* req_flags; TYPE_3__ req_header; } ;
typedef  TYPE_10__ ispreq_t ;
struct TYPE_48__ {int rqs_entry_count; void* rqs_entry_type; } ;
struct TYPE_43__ {int mrk_target; void* mrk_modifier; TYPE_2__ mrk_header; } ;
typedef  TYPE_11__ isp_marker_t ;
struct TYPE_47__ {int rqs_entry_count; void* rqs_entry_type; } ;
struct TYPE_44__ {int mrk_vphdl; void* mrk_modifier; TYPE_1__ mrk_header; } ;
typedef  TYPE_12__ isp_marker_24xx_t ;
struct TYPE_45__ {scalar_t__ is_target; scalar_t__ state; int portid; int prli_word3; int /*<<< orphan*/  handle; } ;
typedef  TYPE_13__ fcportdb_t ;
struct TYPE_46__ {int role; scalar_t__ isp_loopstate; scalar_t__ fctape_enabled; TYPE_13__* portdb; } ;
typedef  TYPE_14__ fcparam ;
typedef  int /*<<< orphan*/  XS_T ;
struct TYPE_50__ {int actv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int CMD_COMPLETE ; 
 int CMD_EAGAIN ; 
 int CMD_QUEUED ; 
 int CMD_RQLATER ; 
 int DPARM_TQING ; 
 TYPE_14__* FUNC1 (TYPE_6__*,int) ; 
 int FCP_CMND_TASK_ATTR_HEAD ; 
 int FCP_CMND_TASK_ATTR_ORDERED ; 
 int FCP_CMND_TASK_ATTR_SIMPLE ; 
 scalar_t__ FUNC2 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FC_PORTDB_STATE_VALID ; 
 scalar_t__ FC_PORTDB_STATE_ZOMBIE ; 
 int /*<<< orphan*/  HBA_BOTCH ; 
 int /*<<< orphan*/  HBA_NOERROR ; 
 int /*<<< orphan*/  HBA_REQINVAL ; 
 int /*<<< orphan*/  HBA_SELTIMEOUT ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*) ; 
 int FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  ISP_HANDLE_INITIATOR ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  ISP_LOGDEBUG1 ; 
 int /*<<< orphan*/  ISP_LOGDEBUG2 ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int /*<<< orphan*/  ISP_LOG_WARN1 ; 
 int /*<<< orphan*/  FUNC7 (void*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int ISP_ROLE_INITIATOR ; 
 scalar_t__ ISP_RUNSTATE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_6__*,int) ; 
 scalar_t__ FUNC12 (TYPE_6__*) ; 
 scalar_t__ FUNC13 (TYPE_6__*) ; 
 scalar_t__ FUNC14 (TYPE_6__*) ; 
 scalar_t__ LOOP_READY ; 
 int MAX_FC_TARG ; 
 int PRLI_WD3_RETRY ; 
 int QENTRY_LEN ; 
 int REQFLAG_HTAG ; 
 int REQFLAG_OTAG ; 
 void* REQFLAG_STAG ; 
 int /*<<< orphan*/  RQSTYPE_CMDONLY ; 
 void* RQSTYPE_MARKER ; 
 int /*<<< orphan*/  RQSTYPE_REQUEST ; 
 int /*<<< orphan*/  RQSTYPE_T2RQS ; 
 int /*<<< orphan*/  RQSTYPE_T7RQS ; 
 TYPE_5__* FUNC15 (TYPE_6__*,int) ; 
 void* SYNC_ALL ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int* FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC20 (int /*<<< orphan*/ *) ; 
 void* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 void* FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_6__*,scalar_t__) ; 
 void* FUNC31 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_6__*,TYPE_11__*,void*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_6__*,TYPE_12__*,void*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,long) ; 

int
FUNC37(XS_T *xs)
{
	ispsoftc_t *isp;
	uint32_t cdblen;
	uint8_t local[QENTRY_LEN];
	ispreq_t *reqp;
	void *cdbp, *qep;
	uint16_t *tptr;
	fcportdb_t *lp;
	int target, dmaresult;

	FUNC19(xs);
	isp = FUNC20(xs);

	/*
	 * Check command CDB length, etc.. We really are limited to 16 bytes
	 * for Fibre Channel, but can do up to 44 bytes in parallel SCSI,
	 * but probably only if we're running fairly new firmware (we'll
	 * let the old f/w choke on an extended command queue entry).
	 */

	if (FUNC16(xs) > (FUNC13(isp)? 16 : 44) || FUNC16(xs) == 0) {
		FUNC32(isp, ISP_LOGERR, "unsupported cdb length (%d, CDB[0]=0x%x)", FUNC16(xs), FUNC17(xs)[0] & 0xff);
		FUNC22(xs, HBA_REQINVAL);
		return (CMD_COMPLETE);
	}

	/*
	 * Translate the target to device handle as appropriate, checking
	 * for correct device state as well.
	 */
	target = FUNC25(xs);
	if (FUNC13(isp)) {
		fcparam *fcp = FUNC1(isp, FUNC18(xs));

		if ((fcp->role & ISP_ROLE_INITIATOR) == 0) {
			FUNC32(isp, ISP_LOG_WARN1,
			    "%d.%d.%jx I am not an initiator",
			    FUNC18(xs), target, (uintmax_t)FUNC21(xs));
			FUNC22(xs, HBA_SELTIMEOUT);
			return (CMD_COMPLETE);
		}

		if (isp->isp_state != ISP_RUNSTATE) {
			FUNC32(isp, ISP_LOGERR, "Adapter not at RUNSTATE");
			FUNC22(xs, HBA_BOTCH);
			return (CMD_COMPLETE);
		}

		FUNC32(isp, ISP_LOGDEBUG2, "XS_TGT(xs)=%d", target);
		lp = &fcp->portdb[target];
		if (target < 0 || target >= MAX_FC_TARG ||
		    lp->is_target == 0) {
			FUNC22(xs, HBA_SELTIMEOUT);
			return (CMD_COMPLETE);
		}
		if (fcp->isp_loopstate != LOOP_READY) {
			FUNC32(isp, ISP_LOGDEBUG1,
			    "%d.%d.%jx loop is not ready",
			    FUNC18(xs), target, (uintmax_t)FUNC21(xs));
			return (CMD_RQLATER);
		}
		if (lp->state == FC_PORTDB_STATE_ZOMBIE) {
			FUNC32(isp, ISP_LOGDEBUG1,
			    "%d.%d.%jx target zombie",
			    FUNC18(xs), target, (uintmax_t)FUNC21(xs));
			return (CMD_RQLATER);
		}
		if (lp->state != FC_PORTDB_STATE_VALID) {
			FUNC32(isp, ISP_LOGDEBUG1,
			    "%d.%d.%jx bad db port state 0x%x",
			    FUNC18(xs), target, (uintmax_t)FUNC21(xs), lp->state);
			FUNC22(xs, HBA_SELTIMEOUT);
			return (CMD_COMPLETE);
		}
	} else {
		sdparam *sdp = FUNC15(isp, FUNC18(xs));
		if (isp->isp_state != ISP_RUNSTATE) {
			FUNC32(isp, ISP_LOGERR, "Adapter not at RUNSTATE");
			FUNC22(xs, HBA_BOTCH);
			return (CMD_COMPLETE);
		}

		if (sdp->update) {
			FUNC35(isp, FUNC18(xs));
		}
		lp = NULL;
	}

 start_again:

	qep = FUNC31(isp);
	if (qep == NULL) {
		FUNC32(isp, ISP_LOG_WARN1, "Request Queue Overflow");
		FUNC22(xs, HBA_BOTCH);
		return (CMD_EAGAIN);
	}
	FUNC22(xs, HBA_NOERROR);

	/*
	 * Now see if we need to synchronize the ISP with respect to anything.
	 * We do dual duty here (cough) for synchronizing for buses other
	 * than which we got here to send a command to.
	 */
	reqp = (ispreq_t *) local;
	FUNC8(local, QENTRY_LEN);
	if (FUNC11(isp, FUNC18(xs))) {
		if (FUNC12(isp)) {
			isp_marker_24xx_t *m = (isp_marker_24xx_t *) reqp;
			m->mrk_header.rqs_entry_count = 1;
			m->mrk_header.rqs_entry_type = RQSTYPE_MARKER;
			m->mrk_modifier = SYNC_ALL;
			m->mrk_vphdl = FUNC18(xs);
			FUNC34(isp, m, qep);
		} else {
			isp_marker_t *m = (isp_marker_t *) reqp;
			m->mrk_header.rqs_entry_count = 1;
			m->mrk_header.rqs_entry_type = RQSTYPE_MARKER;
			m->mrk_target = (FUNC18(xs) << 7);	/* bus # */
			m->mrk_modifier = SYNC_ALL;
			FUNC33(isp, m, qep);
		}
		FUNC10(isp);
		FUNC9(isp, FUNC18(xs), 0);
		goto start_again;
	}

	reqp->req_header.rqs_entry_count = 1;

	/*
	 * Select and install Header Code.
	 * Note that it might be overridden before going out
	 * if we're on a 64 bit platform. The lower level
	 * code (isp_send_cmd) will select the appropriate
	 * 64 bit variant if it needs to.
	 */
	if (FUNC12(isp)) {
		reqp->req_header.rqs_entry_type = RQSTYPE_T7RQS;
	} else if (FUNC13(isp)) {
		reqp->req_header.rqs_entry_type = RQSTYPE_T2RQS;
	} else {
		if (FUNC16(xs) > 12) {
			reqp->req_header.rqs_entry_type = RQSTYPE_CMDONLY;
		} else {
			reqp->req_header.rqs_entry_type = RQSTYPE_REQUEST;
		}
	}

	/*
	 * Set task attributes
	 */
	if (FUNC12(isp)) {
		int ttype;
		if (FUNC23(xs)) {
			ttype = FUNC24(xs);
		} else {
			ttype = REQFLAG_STAG;
		}
		if (ttype == REQFLAG_OTAG) {
			ttype = FCP_CMND_TASK_ATTR_ORDERED;
		} else if (ttype == REQFLAG_HTAG) {
			ttype = FCP_CMND_TASK_ATTR_HEAD;
		} else {
			ttype = FCP_CMND_TASK_ATTR_SIMPLE;
		}
		((ispreqt7_t *)reqp)->req_task_attribute = ttype;
	} else if (FUNC13(isp)) {
		/*
		 * See comment in isp_intr_respq
		 */
		/* XS_SET_RESID(xs, 0); */

		/*
		 * Fibre Channel always requires some kind of tag.
		 * The Qlogic drivers seem be happy not to use a tag,
		 * but this breaks for some devices (IBM drives).
		 */
		if (FUNC23(xs)) {
			((ispreqt2_t *)reqp)->req_flags = FUNC24(xs);
		} else {
			((ispreqt2_t *)reqp)->req_flags = REQFLAG_STAG;
		}
	} else {
		sdparam *sdp = FUNC15(isp, FUNC18(xs));
		if ((sdp->isp_devparam[target].actv_flags & DPARM_TQING) && FUNC23(xs)) {
			reqp->req_flags = FUNC24(xs);
		}
	}

	/*
	 * NB: we do not support long CDBs (yet)
	 */
	cdblen = FUNC16(xs);

	if (FUNC14(isp)) {
		if (cdblen > sizeof (reqp->req_cdb)) {
			FUNC32(isp, ISP_LOGERR, "Command Length %u too long for this chip", cdblen);
			FUNC22(xs, HBA_REQINVAL);
			return (CMD_COMPLETE);
		}
		reqp->req_target = target | (FUNC18(xs) << 7);
		reqp->req_lun_trn = FUNC21(xs);
		reqp->req_cdblen = cdblen;
		tptr = &reqp->req_time;
		cdbp = reqp->req_cdb;
	} else if (FUNC12(isp)) {
		ispreqt7_t *t7 = (ispreqt7_t *)local;

		if (cdblen > sizeof (t7->req_cdb)) {
			FUNC32(isp, ISP_LOGERR, "Command Length %u too long for this chip", cdblen);
			FUNC22(xs, HBA_REQINVAL);
			return (CMD_COMPLETE);
		}

		t7->req_nphdl = lp->handle;
		t7->req_tidlo = lp->portid;
		t7->req_tidhi = lp->portid >> 16;
		t7->req_vpidx = FUNC6(isp, FUNC18(xs));
		FUNC28(t7->req_lun, FUNC0(FUNC21(xs)));
		if (FUNC1(isp, FUNC18(xs))->fctape_enabled && (lp->prli_word3 & PRLI_WD3_RETRY)) {
			if (FUNC2(isp, &t7->req_crn, xs)) {
				FUNC32(isp, ISP_LOG_WARN1,
				    "%d.%d.%jx cannot generate next CRN",
				    FUNC18(xs), target, (uintmax_t)FUNC21(xs));
				FUNC22(xs, HBA_BOTCH);
				return (CMD_EAGAIN);
			}
		}
		tptr = &t7->req_time;
		cdbp = t7->req_cdb;
	} else {
		ispreqt2_t *t2 = (ispreqt2_t *)local;

		if (cdblen > sizeof t2->req_cdb) {
			FUNC32(isp, ISP_LOGERR, "Command Length %u too long for this chip", cdblen);
			FUNC22(xs, HBA_REQINVAL);
			return (CMD_COMPLETE);
		}
		if (FUNC1(isp, FUNC18(xs))->fctape_enabled && (lp->prli_word3 & PRLI_WD3_RETRY)) {
			if (FUNC2(isp, &t2->req_crn, xs)) {
				FUNC32(isp, ISP_LOG_WARN1,
				    "%d.%d.%jx cannot generate next CRN",
				    FUNC18(xs), target, (uintmax_t)FUNC21(xs));
				FUNC22(xs, HBA_BOTCH);
				return (CMD_EAGAIN);
			}
		}
		if (FUNC3(isp)) {
			ispreqt2e_t *t2e = (ispreqt2e_t *)local;
			t2e->req_target = lp->handle;
			t2e->req_scclun = FUNC21(xs);
			tptr = &t2e->req_time;
			cdbp = t2e->req_cdb;
		} else if (FUNC4(isp)) {
			t2->req_target = lp->handle;
			t2->req_scclun = FUNC21(xs);
			tptr = &t2->req_time;
			cdbp = t2->req_cdb;
		} else {
			t2->req_target = lp->handle;
			t2->req_lun_trn = FUNC21(xs);
			tptr = &t2->req_time;
			cdbp = t2->req_cdb;
		}
	}
	*tptr = FUNC26(xs);
	FUNC7(cdbp, FUNC17(xs), cdblen);

	/* Whew. Thankfully the same for type 7 requests */
	reqp->req_handle = FUNC29(isp, xs, ISP_HANDLE_INITIATOR);
	if (reqp->req_handle == 0) {
		FUNC32(isp, ISP_LOG_WARN1, "out of xflist pointers");
		FUNC22(xs, HBA_BOTCH);
		return (CMD_EAGAIN);
	}

	/*
	 * Set up DMA and/or do any platform dependent swizzling of the request entry
	 * so that the Qlogic F/W understands what is being asked of it.
	 *
	 * The callee is responsible for adding all requests at this point.
	 */
	dmaresult = FUNC5(isp, xs, reqp);
	if (dmaresult != CMD_QUEUED) {
		FUNC30(isp, reqp->req_handle);
		/*
		 * dmasetup sets actual error in packet, and
		 * return what we were given to return.
		 */
		return (dmaresult);
	}
	FUNC36(isp, xs, ISP_LOGDEBUG0, "START cmd cdb[0]=0x%x datalen %ld", FUNC17(xs)[0], (long) FUNC27(xs));
	return (CMD_QUEUED);
}