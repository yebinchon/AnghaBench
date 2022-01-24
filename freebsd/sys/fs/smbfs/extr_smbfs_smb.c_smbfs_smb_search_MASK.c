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
typedef  int u_int8_t ;
typedef  scalar_t__ u_int16_t ;
struct smbfs_fctx {int f_attrmask; int f_flags; scalar_t__ f_ecnt; int /*<<< orphan*/  f_skey; int /*<<< orphan*/  f_wclen; int /*<<< orphan*/  f_wildcard; int /*<<< orphan*/  f_dnp; struct smb_rq* f_rq; int /*<<< orphan*/  f_scred; int /*<<< orphan*/  f_ssp; int /*<<< orphan*/  f_left; } ;
struct smb_vc {int vc_txmax; } ;
struct smb_rq {scalar_t__ sr_errclass; scalar_t__ sr_serror; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;

/* Variables and functions */
 int EBADRPC ; 
 int ENOENT ; 
 scalar_t__ ERRDOS ; 
 scalar_t__ ERRnofiles ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int SMBFS_RDD_EOF ; 
 int SMBFS_RDD_FINDFIRST ; 
 int /*<<< orphan*/  SMB_COM_SEARCH ; 
 int SMB_DENTRYLEN ; 
 int SMB_DT_ASCII ; 
 int SMB_DT_VARIABLE ; 
 int SMB_HDRLEN ; 
 int SMB_SKEYLEN ; 
 scalar_t__ FUNC0 (struct smb_vc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct smb_vc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mdchain*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct mdchain*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_rq*,struct mdchain**) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*,struct mbchain**) ; 
 int FUNC16 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC18 (struct smb_rq*) ; 
 int FUNC19 (struct mbchain*,struct smb_vc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct smbfs_fctx *ctx)
{
	struct smb_vc *vcp = FUNC2(ctx->f_ssp);
	struct smb_rq *rqp;
	struct mbchain *mbp;
	struct mdchain *mdp;
	u_int8_t wc, bt;
	u_int16_t ec, dlen, bc;
	int maxent, error, iseof = 0;

	maxent = FUNC9(ctx->f_left, (vcp->vc_txmax - SMB_HDRLEN - 3) / SMB_DENTRYLEN);
	if (ctx->f_rq) {
		FUNC13(ctx->f_rq);
		ctx->f_rq = NULL;
	}
	error = FUNC10(FUNC1(ctx->f_ssp), SMB_COM_SEARCH, ctx->f_scred, &rqp);
	if (error)
		return (error);
	ctx->f_rq = rqp;
	FUNC15(rqp, &mbp);
	FUNC18(rqp);
	FUNC5(mbp, maxent);	/* max entries to return */
	FUNC5(mbp, ctx->f_attrmask);
	FUNC17(rqp);
	FUNC12(rqp);
	FUNC6(mbp, SMB_DT_ASCII);	/* buffer format */
	if (ctx->f_flags & SMBFS_RDD_FINDFIRST) {
		error = FUNC19(mbp, vcp, ctx->f_dnp, ctx->f_wildcard, ctx->f_wclen);
		if (error)
			return error;
		FUNC6(mbp, SMB_DT_VARIABLE);
		FUNC5(mbp, 0);	/* context length */
		ctx->f_flags &= ~SMBFS_RDD_FINDFIRST;
	} else {
		if (FUNC0(vcp)) {
			FUNC4(mbp);
			FUNC6(mbp, 0);
		}
		FUNC6(mbp, 0);	/* file name length */
		FUNC6(mbp, SMB_DT_VARIABLE);
		FUNC5(mbp, SMB_SKEYLEN);
		FUNC3(mbp, ctx->f_skey, SMB_SKEYLEN, MB_MSYSTEM);
	}
	FUNC11(rqp);
	error = FUNC16(rqp);
	if (error) {
		if (rqp->sr_errclass == ERRDOS && rqp->sr_serror == ERRnofiles) {
			error = 0;
			iseof = 1;
			ctx->f_flags |= SMBFS_RDD_EOF;
		} else
			return error;
	}
	FUNC14(rqp, &mdp);
	FUNC8(mdp, &wc);
	if (wc != 1) 
		return iseof ? ENOENT : EBADRPC;
	FUNC7(mdp, &ec);
	if (ec == 0)
		return ENOENT;
	ctx->f_ecnt = ec;
	FUNC7(mdp, &bc);
	if (bc < 3)
		return EBADRPC;
	bc -= 3;
	FUNC8(mdp, &bt);
	if (bt != SMB_DT_VARIABLE)
		return EBADRPC;
	FUNC7(mdp, &dlen);
	if (dlen != bc || dlen % SMB_DENTRYLEN != 0)
		return EBADRPC;
	return 0;
}