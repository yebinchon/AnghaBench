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
typedef  int /*<<< orphan*/  u_char ;
struct smb_rq {int /*<<< orphan*/  sr_vc; int /*<<< orphan*/  sr_mid; struct smb_cred* sr_cred; scalar_t__ sr_share; int /*<<< orphan*/  sr_slock; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct smb_rq*,int) ; 
 int FUNC1 (struct smb_connobj*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC2 (struct smb_rq*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,struct smb_cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct smb_cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct smb_rq *rqp, struct smb_connobj *layer, u_char cmd,
	struct smb_cred *scred)
{
	int error;

	FUNC0(rqp, sizeof(*rqp));
	FUNC4(&rqp->sr_slock, "srslock");
	error = FUNC1(layer, &rqp->sr_vc, &rqp->sr_share);
	if (error)
		return error;
	error = FUNC5(rqp->sr_vc, scred, SMBM_EXEC);
	if (error)
		return error;
	if (rqp->sr_share) {
		error = FUNC3(rqp->sr_share, scred, SMBM_EXEC);
		if (error)
			return error;
	}
	rqp->sr_cred = scred;
	rqp->sr_mid = FUNC6(rqp->sr_vc);
	return FUNC2(rqp, cmd);
}