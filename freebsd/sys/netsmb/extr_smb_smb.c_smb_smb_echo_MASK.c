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
struct smb_vc {int dummy; } ;
struct mbchain {int dummy; } ;
struct smb_rq {struct mbchain sr_rq; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SMB_COM_ECHO ; 
 int /*<<< orphan*/  FUNC1 (struct smb_vc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 

int
FUNC11(struct smb_vc *vcp, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	int error;

	error = FUNC4(FUNC1(vcp), SMB_COM_ECHO, scred, &rqp);
	if (error)
		return error;
	mbp = &rqp->sr_rq;
	FUNC10(rqp);
	FUNC2(mbp, 1);
	FUNC9(rqp);
	FUNC6(rqp);
	FUNC3(mbp, 0);
	FUNC5(rqp);
	error = FUNC8(rqp);
	FUNC0("%d\n", error);
	FUNC7(rqp);
	return error;
}