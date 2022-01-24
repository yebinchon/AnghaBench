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
struct smbfs_fctx {int f_flags; scalar_t__ f_t2; scalar_t__ f_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBFSDATA ; 
 int SMBFS_RDD_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct smbfs_fctx*) ; 

__attribute__((used)) static int
FUNC3(struct smbfs_fctx *ctx)
{
	if (ctx->f_name)
		FUNC0(ctx->f_name, M_SMBFSDATA);
	if (ctx->f_t2)
		FUNC1(ctx->f_t2);
	if ((ctx->f_flags & SMBFS_RDD_NOCLOSE) == 0)
		FUNC2(ctx);
	return 0;
}