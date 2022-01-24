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
typedef  int /*<<< orphan*/  uint32_t ;
struct smbnode {int /*<<< orphan*/  n_fid; int /*<<< orphan*/  n_flag; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  NFLUSHWIRE ; 
 int /*<<< orphan*/  SMB_COM_WRITE ; 
 int /*<<< orphan*/  SMB_DT_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*,struct mbchain**) ; 
 int FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smbnode*,scalar_t__,struct smb_cred*) ; 

int
FUNC14(struct smbnode *np, int64_t newsize, struct smb_cred *scred)
{
	struct smb_share *ssp = np->n_mount->sm_share;
	struct smb_rq *rqp;
	struct mbchain *mbp;
	int error;

	if (!FUNC13(np, newsize, scred)) {
		np->n_flag |= NFLUSHWIRE;
		return (0);
	}
	/* XXX: We should use SMB_COM_WRITE_ANDX to support large offsets */
	error = FUNC5(FUNC0(ssp), SMB_COM_WRITE, scred, &rqp);
	if (error)
		return (error);
	FUNC9(rqp, &mbp);
	FUNC12(rqp);
	FUNC1(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
	FUNC2(mbp, 0);
	FUNC3(mbp, (uint32_t)newsize);
	FUNC2(mbp, 0);
	FUNC11(rqp);
	FUNC7(rqp);
	FUNC4(mbp, SMB_DT_DATA);
	FUNC2(mbp, 0);
	FUNC6(rqp);
	error = FUNC10(rqp);
	FUNC8(rqp);
	return error;
}