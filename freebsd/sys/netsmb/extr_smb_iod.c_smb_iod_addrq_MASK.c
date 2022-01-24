#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smbiod {scalar_t__ iod_p; int iod_state; scalar_t__ iod_muxcnt; int /*<<< orphan*/  iod_rqlist; int /*<<< orphan*/  iod_muxwant; int /*<<< orphan*/  iod_flags; } ;
struct smb_vc {scalar_t__ vc_maxmux; struct smbiod* vc_iod; } ;
struct smb_rq {scalar_t__ sr_state; int sr_lerror; int /*<<< orphan*/  sr_flags; TYPE_2__* sr_cred; struct smb_vc* sr_vc; } ;
struct TYPE_4__ {TYPE_1__* scr_td; } ;
struct TYPE_3__ {scalar_t__ td_proc; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int EXDEV ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SMBIOD_EV_CONNECT ; 
 int SMBIOD_EV_SYNC ; 
#define  SMBIOD_ST_DEAD 129 
#define  SMBIOD_ST_NOTCONN 128 
 scalar_t__ SMBRQ_NOTSENT ; 
 int /*<<< orphan*/  SMBR_INTERNAL ; 
 int /*<<< orphan*/  FUNC2 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC3 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC4 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct smb_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct smb_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int FUNC10 (struct smbiod*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct smbiod*,struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smbiod*) ; 
 int /*<<< orphan*/  sr_link ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC14(struct smb_rq *rqp)
{
	struct smb_vc *vcp = rqp->sr_vc;
	struct smbiod *iod = vcp->vc_iod;
	int error;

	FUNC1("\n");
	if (rqp->sr_cred->scr_td != NULL &&
	    rqp->sr_cred->scr_td->td_proc == iod->iod_p) {
		rqp->sr_flags |= SMBR_INTERNAL;
		FUNC2(iod);
		FUNC5(&iod->iod_rqlist, rqp, sr_link);
		FUNC4(iod);
		for (;;) {
			if (FUNC11(iod, rqp) != 0) {
				FUNC8(iod);
				break;
			}
			/*
			 * we don't need to lock state field here
			 */
			if (rqp->sr_state != SMBRQ_NOTSENT)
				break;
			FUNC13(&iod->iod_flags, PWAIT, "90sndw", hz);
		}
		if (rqp->sr_lerror)
			FUNC9(rqp);
		return rqp->sr_lerror;
	}

	switch (iod->iod_state) {
	    case SMBIOD_ST_NOTCONN:
		return ENOTCONN;
	    case SMBIOD_ST_DEAD:
		error = FUNC10(vcp->vc_iod, SMBIOD_EV_CONNECT | SMBIOD_EV_SYNC, NULL);
		if (error)
			return error;
		return EXDEV;
	    default:
		break;
	}

	FUNC2(iod);
	for (;;) {
		if (vcp->vc_maxmux == 0) {
			FUNC0("maxmux == 0\n");
			break;
		}
		if (iod->iod_muxcnt < vcp->vc_maxmux)
			break;
		iod->iod_muxwant++;
		FUNC7(&iod->iod_muxwant, FUNC3(iod),
		    PWAIT, "90mux", 0);
	}
	iod->iod_muxcnt++;
	FUNC6(&iod->iod_rqlist, rqp, sr_link);
	FUNC4(iod);
	FUNC12(iod);
	return 0;
}