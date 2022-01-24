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
typedef  int u_int32_t ;
typedef  int u_char ;
struct smbnode {int /*<<< orphan*/  n_fid; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_COM_LOCKING_ANDX ; 
 int SMB_LOCKING_ANDX_SHARED_LOCK ; 
 int SMB_LOCK_RELEASE ; 
 int SMB_LOCK_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*,struct mbchain**) ; 
 int FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 

__attribute__((used)) static int
FUNC13(struct smbnode *np, int op, u_int32_t pid, off_t start, off_t end,
	struct smb_cred *scred)
{
	struct smb_share *ssp = np->n_mount->sm_share;
	struct smb_rq *rqp;
	struct mbchain *mbp;
	u_char ltype = 0;
	int error;

	if (op == SMB_LOCK_SHARED)
		ltype |= SMB_LOCKING_ANDX_SHARED_LOCK;

	error = FUNC5(FUNC0(ssp), SMB_COM_LOCKING_ANDX, scred, &rqp);
	if (error)
		return (error);
	FUNC9(rqp, &mbp);
	FUNC12(rqp);
	FUNC4(mbp, 0xff);	/* secondary command */
	FUNC4(mbp, 0);		/* MBZ */
	FUNC2(mbp, 0);
	FUNC1(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
	FUNC4(mbp, ltype);	/* locktype */
	FUNC4(mbp, 0);		/* oplocklevel - 0 seems is NO_OPLOCK */
	FUNC3(mbp, 0);	/* timeout - break immediately */
	FUNC2(mbp, op == SMB_LOCK_RELEASE ? 1 : 0);
	FUNC2(mbp, op == SMB_LOCK_RELEASE ? 0 : 1);
	FUNC11(rqp);
	FUNC7(rqp);
	FUNC2(mbp, pid);
	FUNC3(mbp, start);
	FUNC3(mbp, end - start);
	FUNC6(rqp);
	error = FUNC10(rqp);
	FUNC8(rqp);
	return error;
}