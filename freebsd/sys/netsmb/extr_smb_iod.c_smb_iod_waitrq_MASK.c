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
struct smbiod {int /*<<< orphan*/  iod_rqlist; int /*<<< orphan*/  iod_flags; } ;
struct smb_rq {int sr_flags; scalar_t__ sr_rpgen; scalar_t__ sr_rplast; int sr_lerror; int /*<<< orphan*/  sr_state; TYPE_1__* sr_vc; } ;
struct TYPE_2__ {struct smbiod* vc_iod; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_rq*) ; 
 int SMBR_INTERNAL ; 
 int SMBR_MULTIPACKET ; 
 int /*<<< orphan*/  FUNC4 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC5 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct smb_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct smb_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smbiod*) ; 
 int /*<<< orphan*/  sr_link ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC13(struct smb_rq *rqp)
{
	struct smbiod *iod = rqp->sr_vc->vc_iod;
	int error;

	FUNC0("\n");
	if (rqp->sr_flags & SMBR_INTERNAL) {
		for (;;) {
			FUNC11(iod);
			FUNC9(iod);
			if (rqp->sr_rpgen != rqp->sr_rplast)
				break;
			FUNC12(&iod->iod_flags, PWAIT, "90irq", hz);
		}
		FUNC10(rqp);
		return rqp->sr_lerror;

	}
	FUNC1(rqp);
	if (rqp->sr_rpgen == rqp->sr_rplast)
		FUNC8(&rqp->sr_state, FUNC2(rqp), PWAIT, "90wrq", 0);
	rqp->sr_rplast++;
	FUNC3(rqp);
	error = rqp->sr_lerror;
	if (rqp->sr_flags & SMBR_MULTIPACKET) {
		/*
		 * If request should stay in the list, then reinsert it
		 * at the end of queue so other waiters have chance to concur
		 */
		FUNC4(iod);
		FUNC7(&iod->iod_rqlist, rqp, sr_link);
		FUNC6(&iod->iod_rqlist, rqp, sr_link);
		FUNC5(iod);
	} else
		FUNC10(rqp);
	return error;
}