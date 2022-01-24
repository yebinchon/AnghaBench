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
struct dqblk64 {int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_isoftlimit; int /*<<< orphan*/  dqb_ihardlimit; int /*<<< orphan*/  dqb_curblocks; int /*<<< orphan*/  dqb_bsoftlimit; int /*<<< orphan*/  dqb_bhardlimit; } ;
struct dqblk32 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(const struct dqblk64 *dqb64, struct dqblk32 *dqb32)
{

	dqb32->dqb_bhardlimit = FUNC0(dqb64->dqb_bhardlimit);
	dqb32->dqb_bsoftlimit = FUNC0(dqb64->dqb_bsoftlimit);
	dqb32->dqb_curblocks = FUNC0(dqb64->dqb_curblocks);
	dqb32->dqb_ihardlimit = FUNC0(dqb64->dqb_ihardlimit);
	dqb32->dqb_isoftlimit = FUNC0(dqb64->dqb_isoftlimit);
	dqb32->dqb_curinodes = FUNC0(dqb64->dqb_curinodes);
	dqb32->dqb_btime = FUNC0(dqb64->dqb_btime);
	dqb32->dqb_itime = FUNC0(dqb64->dqb_itime);
}