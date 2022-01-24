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
struct smbfs_fctx {int /*<<< orphan*/  f_Sid; int /*<<< orphan*/  f_scred; int /*<<< orphan*/  f_ssp; } ;
struct smb_rq {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_COM_FIND_CLOSE2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*,struct mbchain**) ; 
 int FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 

__attribute__((used)) static int
FUNC10(struct smbfs_fctx *ctx)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	int error;

	error = FUNC2(FUNC0(ctx->f_ssp), SMB_COM_FIND_CLOSE2,
	    ctx->f_scred, &rqp);
	if (error)
		return (error);
	FUNC6(rqp, &mbp);
	FUNC9(rqp);
	FUNC1(mbp, (caddr_t)&ctx->f_Sid, 2, MB_MSYSTEM);
	FUNC8(rqp);
	FUNC4(rqp);
	FUNC3(rqp);
	error = FUNC7(rqp);
	FUNC5(rqp);
	return error;
}