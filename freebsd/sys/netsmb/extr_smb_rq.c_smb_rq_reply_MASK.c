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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct mdchain {int dummy; } ;
struct smb_rq {int /*<<< orphan*/  sr_serror; int /*<<< orphan*/  sr_errclass; int /*<<< orphan*/  sr_rptid; int /*<<< orphan*/  sr_rpuid; int /*<<< orphan*/  sr_rppid; int /*<<< orphan*/  sr_rpmid; TYPE_1__* sr_vc; int /*<<< orphan*/  sr_rpflags2; int /*<<< orphan*/  sr_rpflags; int /*<<< orphan*/  sr_error; struct mdchain sr_rp; } ;
struct TYPE_2__ {int vc_hflags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SMB_FLAGS2_ERR_STATUS ; 
 int SMB_FLAGS2_SECURITY_SIGNATURE ; 
 int FUNC1 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct smb_rq*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smb_rq*) ; 

__attribute__((used)) static int
FUNC8(struct smb_rq *rqp)
{
	struct mdchain *mdp = &rqp->sr_rp;
	u_int32_t tdw;
	u_int8_t tb;
	int error, rperror = 0;

	error = FUNC5(rqp);
	if (error)
		return error;
	error = FUNC2(mdp, &tdw);
	if (error)
		return error;
	error = FUNC4(mdp, &tb);
	if (rqp->sr_vc->vc_hflags2 & SMB_FLAGS2_ERR_STATUS) {
		error = FUNC3(mdp, &rqp->sr_error);
	} else {
		error = FUNC4(mdp, &rqp->sr_errclass);
		error = FUNC4(mdp, &tb);
		error = FUNC1(mdp, &rqp->sr_serror);
		if (!error)
			rperror = FUNC6(rqp->sr_errclass, rqp->sr_serror);
	}
	error = FUNC4(mdp, &rqp->sr_rpflags);
	error = FUNC1(mdp, &rqp->sr_rpflags2);

	error = FUNC2(mdp, &tdw);
	error = FUNC2(mdp, &tdw);
	error = FUNC2(mdp, &tdw);

	error = FUNC1(mdp, &rqp->sr_rptid);
	error = FUNC1(mdp, &rqp->sr_rppid);
	error = FUNC1(mdp, &rqp->sr_rpuid);
	error = FUNC1(mdp, &rqp->sr_rpmid);

	if (error == 0 &&
	    (rqp->sr_vc->vc_hflags2 & SMB_FLAGS2_SECURITY_SIGNATURE))
		error = FUNC7(rqp);

	FUNC0("M:%04x, P:%04x, U:%04x, T:%04x, E: %d:%d\n",
	    rqp->sr_rpmid, rqp->sr_rppid, rqp->sr_rpuid, rqp->sr_rptid,
	    rqp->sr_errclass, rqp->sr_serror);
	return error ? error : rperror;
}