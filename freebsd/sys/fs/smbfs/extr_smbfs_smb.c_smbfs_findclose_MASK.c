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
struct smbfs_fctx {int f_flags; struct smbfs_fctx* f_rname; struct smb_cred* f_scred; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBFSDATA ; 
 int SMBFS_RDD_USESEARCH ; 
 int /*<<< orphan*/  FUNC0 (struct smbfs_fctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smbfs_fctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct smbfs_fctx*) ; 

int
FUNC3(struct smbfs_fctx *ctx, struct smb_cred *scred)
{
	ctx->f_scred = scred;
	if (ctx->f_flags & SMBFS_RDD_USESEARCH) {
		FUNC1(ctx);
	} else
		FUNC2(ctx);
	if (ctx->f_rname)
		FUNC0(ctx->f_rname, M_SMBFSDATA);
	FUNC0(ctx, M_SMBFSDATA);
	return 0;
}