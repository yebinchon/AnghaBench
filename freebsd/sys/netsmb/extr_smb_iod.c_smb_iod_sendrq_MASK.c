#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct smbiod {int iod_state; scalar_t__ iod_muxcnt; int /*<<< orphan*/  iod_lastrqsent; struct smb_vc* iod_vc; struct thread* iod_td; } ;
struct smb_vc {scalar_t__ vc_maxmux; int vc_hflags2; int /*<<< orphan*/  vc_smbuid; } ;
struct smb_share {int /*<<< orphan*/  ss_tid; } ;
struct TYPE_2__ {int /*<<< orphan*/  mb_top; } ;
struct smb_rq {scalar_t__ sr_sendcnt; int sr_lerror; int /*<<< orphan*/  sr_state; int /*<<< orphan*/  sr_flags; int /*<<< orphan*/  sr_timesent; TYPE_1__ sr_rq; int /*<<< orphan*/  sr_mid; int /*<<< orphan*/  sr_rquid; int /*<<< orphan*/  sr_rqtid; struct smb_share* sr_share; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  M_COPYALL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  SMBIOD_ST_DEAD 130 
#define  SMBIOD_ST_NOTCONN 129 
#define  SMBIOD_ST_RECONNECT 128 
 int /*<<< orphan*/  SMBRQ_SENT ; 
 int /*<<< orphan*/  SMBR_RESTART ; 
 int /*<<< orphan*/  SMBR_SENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SMB_FLAGS2_SECURITY_SIGNATURE ; 
 int /*<<< orphan*/  SMB_TID_UNKNOWN ; 
 scalar_t__ FUNC2 (struct smb_vc*,int) ; 
 int FUNC3 (struct smb_vc*,struct mbuf*,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*,int) ; 
 scalar_t__ FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 

__attribute__((used)) static int
FUNC12(struct smbiod *iod, struct smb_rq *rqp)
{
	struct thread *td = iod->iod_td;
	struct smb_vc *vcp = iod->iod_vc;
	struct smb_share *ssp = rqp->sr_share;
	struct mbuf *m;
	int error;

	FUNC0("iod_state = %d\n", iod->iod_state);
	switch (iod->iod_state) {
	    case SMBIOD_ST_NOTCONN:
		FUNC9(rqp, ENOTCONN);
		return 0;
	    case SMBIOD_ST_DEAD:
		iod->iod_state = SMBIOD_ST_RECONNECT;
		return 0;
	    case SMBIOD_ST_RECONNECT:
		return 0;
	    default:
		break;
	}
	if (rqp->sr_sendcnt == 0) {
#ifdef movedtoanotherplace
		if (vcp->vc_maxmux != 0 && iod->iod_muxcnt >= vcp->vc_maxmux)
			return 0;
#endif
		FUNC5(rqp->sr_rqtid, ssp ? ssp->ss_tid : SMB_TID_UNKNOWN);
		FUNC5(rqp->sr_rquid, vcp ? vcp->vc_smbuid : 0);
		FUNC8(&rqp->sr_rq);
		if (vcp->vc_hflags2 & SMB_FLAGS2_SECURITY_SIGNATURE)
			FUNC11(rqp);
	}
	if (rqp->sr_sendcnt++ > 5) {
		rqp->sr_flags |= SMBR_RESTART;
		FUNC9(rqp, rqp->sr_lerror);
		/*
		 * If all attempts to send a request failed, then
		 * something is seriously hosed.
		 */
		return ENOTCONN;
	}
	FUNC1("M:%04x, P:%04x, U:%04x, T:%04x\n", rqp->sr_mid, 0, 0, 0);
	FUNC7(rqp->sr_rq.mb_top);
	m = FUNC6(rqp->sr_rq.mb_top, 0, M_COPYALL, M_WAITOK);
	error = rqp->sr_lerror = FUNC3(vcp, m, td);
	if (error == 0) {
		FUNC4(&rqp->sr_timesent);
		iod->iod_lastrqsent = rqp->sr_timesent;
		rqp->sr_flags |= SMBR_SENT;
		rqp->sr_state = SMBRQ_SENT;
		return 0;
	}
	/*
	 * Check for fatal errors
	 */
	if (FUNC2(vcp, error)) {
		/*
		 * No further attempts should be made
		 */
		return ENOTCONN;
	}
	if (FUNC10(rqp))
		FUNC9(rqp, EINTR);
	return 0;
}