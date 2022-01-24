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
struct smb_share {scalar_t__ ss_tid; } ;
struct mbchain {int dummy; } ;
struct smb_rq {struct mbchain sr_rq; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SMB_COM_TREE_DISCONNECT ; 
 scalar_t__ SMB_TID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*) ; 

int
FUNC9(struct smb_share *ssp, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	int error;

	if (ssp->ss_tid == SMB_TID_UNKNOWN)
		return 0;
	error = FUNC2(FUNC1(ssp), SMB_COM_TREE_DISCONNECT, scred, &rqp);
	if (error)
		return error;
	mbp = &rqp->sr_rq;
	FUNC8(rqp);
	FUNC7(rqp);
	FUNC4(rqp);
	FUNC3(rqp);
	error = FUNC6(rqp);
	FUNC0("%d\n", error);
	FUNC5(rqp);
	ssp->ss_tid = SMB_TID_UNKNOWN;
	return error;
}