#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct smbiod {scalar_t__ iod_muxwant; int /*<<< orphan*/  iod_muxcnt; int /*<<< orphan*/  iod_rqlist; } ;
struct smb_vc {struct smbiod* vc_iod; } ;
struct smb_rq {int sr_flags; struct smb_vc* sr_vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SMBR_INTERNAL ; 
 int SMBR_XLOCK ; 
 int SMBR_XLOCKWANT ; 
 int /*<<< orphan*/  FUNC1 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC2 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC3 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct smb_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sr_link ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

int
FUNC7(struct smb_rq *rqp)
{
	struct smb_vc *vcp = rqp->sr_vc;
	struct smbiod *iod = vcp->vc_iod;

	FUNC0("\n");
	if (rqp->sr_flags & SMBR_INTERNAL) {
		FUNC1(iod);
		FUNC4(&iod->iod_rqlist, rqp, sr_link);
		FUNC3(iod);
		return 0;
	}
	FUNC1(iod);
	while (rqp->sr_flags & SMBR_XLOCK) {
		rqp->sr_flags |= SMBR_XLOCKWANT;
		FUNC5(rqp, FUNC2(iod), PWAIT, "90xrm", 0);
	}
	FUNC4(&iod->iod_rqlist, rqp, sr_link);
	iod->iod_muxcnt--;
	if (iod->iod_muxwant) {
		iod->iod_muxwant--;
		FUNC6(&iod->iod_muxwant);
	}
	FUNC3(iod);
	return 0;
}