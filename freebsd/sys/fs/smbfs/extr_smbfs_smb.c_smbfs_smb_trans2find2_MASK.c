#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct smbfs_fctx {int f_flags; int f_attrmask; int f_limit; int f_infolevel; int f_rnamelen; int f_ecnt; int f_rnameofs; scalar_t__ f_eofs; int /*<<< orphan*/  f_Sid; scalar_t__ f_rname; struct smb_t2rq* f_t2; int /*<<< orphan*/  f_scred; int /*<<< orphan*/  f_ssp; int /*<<< orphan*/  f_wclen; int /*<<< orphan*/  f_wildcard; int /*<<< orphan*/  f_dnp; } ;
struct smb_vc {int vc_flags; int /*<<< orphan*/  vc_txmax; } ;
struct mdchain {TYPE_1__* md_top; } ;
struct mbchain {TYPE_2__* mb_top; } ;
struct smb_t2rq {int t2_maxpcount; struct mdchain t2_rdata; struct mdchain t2_rparam; int /*<<< orphan*/  t2_maxdcount; struct mbchain t2_tparam; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  m_next; } ;
struct TYPE_3__ {scalar_t__ m_len; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int SMBC_WIN95 ; 
 int SMBFS_RDD_EOF ; 
 int SMBFS_RDD_FINDFIRST ; 
 int SMBFS_RDD_FINDSINGLE ; 
 int SMBFS_RDD_GOTRNAME ; 
 int SMBFS_RDD_NOCLOSE ; 
 int /*<<< orphan*/  SMB_TRANS2_FIND_FIRST2 ; 
 int /*<<< orphan*/  SMB_TRANS2_FIND_NEXT2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct smb_vc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_t2rq**) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_t2rq*) ; 
 int FUNC13 (struct smb_t2rq*) ; 
 int FUNC14 (struct mbchain*,struct smb_vc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct timeval*) ; 

__attribute__((used)) static int
FUNC16(struct smbfs_fctx *ctx)
{
	struct smb_t2rq *t2p;
	struct smb_vc *vcp = FUNC1(ctx->f_ssp);
	struct mbchain *mbp;
	struct mdchain *mdp;
	u_int16_t tw, flags;
	int error;

	if (ctx->f_t2) {
		FUNC12(ctx->f_t2);
		ctx->f_t2 = NULL;
	}
	ctx->f_flags &= ~SMBFS_RDD_GOTRNAME;
	flags = 8 | 2;			/* <resume> | <close if EOS> */
	if (ctx->f_flags & SMBFS_RDD_FINDSINGLE) {
		flags |= 1;		/* close search after this request */
		ctx->f_flags |= SMBFS_RDD_NOCLOSE;
	}
	if (ctx->f_flags & SMBFS_RDD_FINDFIRST) {
		error = FUNC11(FUNC0(ctx->f_ssp), SMB_TRANS2_FIND_FIRST2,
		    ctx->f_scred, &t2p);
		if (error)
			return error;
		ctx->f_t2 = t2p;
		mbp = &t2p->t2_tparam;
		FUNC2(mbp);
		FUNC4(mbp, ctx->f_attrmask);
		FUNC4(mbp, ctx->f_limit);
		FUNC4(mbp, flags);
		FUNC4(mbp, ctx->f_infolevel);
		FUNC5(mbp, 0);
		error = FUNC14(mbp, vcp, ctx->f_dnp, ctx->f_wildcard, ctx->f_wclen);
		if (error)
			return error;
	} else	{
		error = FUNC11(FUNC0(ctx->f_ssp), SMB_TRANS2_FIND_NEXT2,
		    ctx->f_scred, &t2p);
		if (error)
			return error;
		ctx->f_t2 = t2p;
		mbp = &t2p->t2_tparam;
		FUNC2(mbp);
		FUNC3(mbp, (caddr_t)&ctx->f_Sid, 2, MB_MSYSTEM);
		FUNC4(mbp, ctx->f_limit);
		FUNC4(mbp, ctx->f_infolevel);
		FUNC5(mbp, 0);		/* resume key */
		FUNC4(mbp, flags);
		if (ctx->f_rname)
			FUNC3(mbp, ctx->f_rname, ctx->f_rnamelen + 1, MB_MSYSTEM);
		else
			FUNC6(mbp, 0);	/* resume file name */
#if 0
	struct timeval tv;
	tv.tv_sec = 0;
	tv.tv_usec = 200 * 1000;	/* 200ms */
		if (vcp->vc_flags & SMBC_WIN95) {
			/*
			 * some implementations suggests to sleep here
			 * for 200ms, due to the bug in the Win95.
			 * I've didn't notice any problem, but put code
			 * for it.
			 */
			 pause("fix95", tvtohz(&tv));
		}
#endif
	}
	t2p->t2_maxpcount = 5 * 2;
	t2p->t2_maxdcount = vcp->vc_txmax;
	error = FUNC13(t2p);
	if (error)
		return error;
	mdp = &t2p->t2_rparam;
	if (ctx->f_flags & SMBFS_RDD_FINDFIRST) {
		if ((error = FUNC7(mdp, &ctx->f_Sid)) != 0)
			return error;
		ctx->f_flags &= ~SMBFS_RDD_FINDFIRST;
	}
	if ((error = FUNC8(mdp, &tw)) != 0)
		return error;
	ctx->f_ecnt = tw;
	if ((error = FUNC8(mdp, &tw)) != 0)
		return error;
	if (tw)
		ctx->f_flags |= SMBFS_RDD_EOF | SMBFS_RDD_NOCLOSE;
	if ((error = FUNC8(mdp, &tw)) != 0)
		return error;
	if ((error = FUNC8(mdp, &tw)) != 0)
		return error;
	if (ctx->f_ecnt == 0) {
		ctx->f_flags |= SMBFS_RDD_EOF | SMBFS_RDD_NOCLOSE;
		return ENOENT;
	}
	ctx->f_rnameofs = tw;
	mdp = &t2p->t2_rdata;
	if (mdp->md_top == NULL) {
		FUNC10("bug: ecnt = %d, but data is NULL (please report)\n", ctx->f_ecnt);
		return ENOENT;
	}
	if (mdp->md_top->m_len == 0) {
		FUNC10("bug: ecnt = %d, but m_len = 0 and m_next = %p (please report)\n", ctx->f_ecnt,mbp->mb_top->m_next);
		return ENOENT;
	}
	ctx->f_eofs = 0;
	return 0;
}