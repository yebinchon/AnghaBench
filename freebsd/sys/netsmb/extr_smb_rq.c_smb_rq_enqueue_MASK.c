#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smb_share {int ss_flags; int /*<<< orphan*/  ss_vcgenid; } ;
struct smb_rq {TYPE_2__* sr_vc; TYPE_1__* sr_cred; struct smb_share* sr_share; } ;
struct TYPE_4__ {int /*<<< orphan*/  scr_td; } ;
struct TYPE_6__ {TYPE_1__ iod_scred; } ;
struct TYPE_5__ {TYPE_3__* vc_iod; } ;

/* Variables and functions */
 int EINTR ; 
 int EXDEV ; 
 int PDROP ; 
 int PWAIT ; 
 int SMBIOD_EV_SYNC ; 
 int SMBIOD_EV_TREECONNECT ; 
 int SMBS_CONNECTED ; 
 int SMBS_RECONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_share*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smb_rq*) ; 
 int FUNC5 (TYPE_3__*,int,struct smb_share*) ; 
 scalar_t__ FUNC6 (struct smb_share*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct smb_rq *rqp)
{
	struct smb_share *ssp = rqp->sr_share;
	int error;

	if (ssp == NULL || rqp->sr_cred == &rqp->sr_vc->vc_iod->iod_scred) {
		return FUNC4(rqp);
	}
	for (;;) {
		FUNC0(ssp);
		if (ssp->ss_flags & SMBS_RECONNECTING) {
			FUNC3(&ssp->ss_vcgenid, FUNC1(ssp),
			    PWAIT | PDROP, "90trcn", hz);
			if (FUNC7(rqp->sr_cred->scr_td))
				return EINTR;
			continue;
		}
		if (FUNC6(ssp) || (ssp->ss_flags & SMBS_CONNECTED) == 0) {
			FUNC2(ssp);
		} else {
			FUNC2(ssp);
			error = FUNC5(rqp->sr_vc->vc_iod,
			    SMBIOD_EV_TREECONNECT | SMBIOD_EV_SYNC, ssp);
			if (error)
				return error;
		}
		error = FUNC4(rqp);
		if (error != EXDEV)
			break;
	}
	return error;
}