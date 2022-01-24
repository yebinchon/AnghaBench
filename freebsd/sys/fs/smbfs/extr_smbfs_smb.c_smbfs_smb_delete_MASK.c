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
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_COM_DELETE ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 int SMB_FA_HIDDEN ; 
 int SMB_FA_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*,struct mbchain**) ; 
 int FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int FUNC12 (struct mbchain*,int /*<<< orphan*/ ,struct smbnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC13(struct smbnode *np, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct mbchain *mbp;
	int error;

	error = FUNC4(FUNC0(ssp), SMB_COM_DELETE, scred, &rqp);
	if (error)
		return (error);
	FUNC8(rqp, &mbp);
	FUNC11(rqp);
	FUNC2(mbp, SMB_FA_SYSTEM | SMB_FA_HIDDEN);
	FUNC10(rqp);
	FUNC6(rqp);
	FUNC3(mbp, SMB_DT_ASCII);
	error = FUNC12(mbp, FUNC1(ssp), np, NULL, 0);
	if (!error) {
		FUNC5(rqp);
		error = FUNC9(rqp);
	}
	FUNC7(rqp);
	return error;
}