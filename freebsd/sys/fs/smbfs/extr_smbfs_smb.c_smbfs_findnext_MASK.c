#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct TYPE_5__ {int /*<<< orphan*/  fa_ino; } ;
struct smbfs_fctx {int f_flags; int f_nmlen; char* f_name; TYPE_3__* f_dnp; TYPE_2__ f_attr; int /*<<< orphan*/  f_ssp; struct smb_cred* f_scred; } ;
struct smb_cred {int dummy; } ;
struct TYPE_6__ {TYPE_1__* n_mount; } ;
struct TYPE_4__ {int /*<<< orphan*/  sm_caseopt; } ;

/* Variables and functions */
 int SMBFS_RDD_USESEARCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct smbfs_fctx*,int) ; 
 int FUNC5 (struct smbfs_fctx*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 

int
FUNC8(struct smbfs_fctx *ctx, int limit, struct smb_cred *scred)
{
	int error;

	if (limit == 0)
		limit = 1000000;
	else if (limit > 1)
		limit *= 4;	/* imperical */
	ctx->f_scred = scred;
	for (;;) {
		if (ctx->f_flags & SMBFS_RDD_USESEARCH) {
			error = FUNC4(ctx, limit);
		} else
			error = FUNC5(ctx, limit);
		if (error)
			return error;
		if (FUNC0(FUNC1(ctx->f_ssp))) {
			if ((ctx->f_nmlen == 2 &&
			     *(u_int16_t *)ctx->f_name == FUNC2(0x002e)) ||
			    (ctx->f_nmlen == 4 &&
			     *(u_int32_t *)ctx->f_name == FUNC3(0x002e002e)))
				continue;
		} else
			if ((ctx->f_nmlen == 1 && ctx->f_name[0] == '.') ||
			    (ctx->f_nmlen == 2 && ctx->f_name[0] == '.' &&
			     ctx->f_name[1] == '.'))
				continue;
		break;
	}
	FUNC6(FUNC1(ctx->f_ssp), ctx->f_name, &ctx->f_nmlen,
			    ctx->f_dnp->n_mount->sm_caseopt);
	ctx->f_attr.fa_ino = FUNC7(ctx->f_dnp, ctx->f_name, ctx->f_nmlen);
	return 0;
}