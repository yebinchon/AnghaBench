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
struct dquot {int /*<<< orphan*/  dq_itime; int /*<<< orphan*/  dq_btime; int /*<<< orphan*/  dq_curinodes; int /*<<< orphan*/  dq_isoftlimit; int /*<<< orphan*/  dq_ihardlimit; int /*<<< orphan*/  dq_curblocks; int /*<<< orphan*/  dq_bsoftlimit; int /*<<< orphan*/  dq_bhardlimit; } ;
struct dqblk32 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(const struct dquot *dq, struct dqblk32 *dqb32)
{

	dqb32->dqb_bhardlimit = FUNC0(dq->dq_bhardlimit);
	dqb32->dqb_bsoftlimit = FUNC0(dq->dq_bsoftlimit);
	dqb32->dqb_curblocks = FUNC0(dq->dq_curblocks);
	dqb32->dqb_ihardlimit = FUNC0(dq->dq_ihardlimit);
	dqb32->dqb_isoftlimit = FUNC0(dq->dq_isoftlimit);
	dqb32->dqb_curinodes = FUNC0(dq->dq_curinodes);
	dqb32->dqb_btime = FUNC0(dq->dq_btime);
	dqb32->dqb_itime = FUNC0(dq->dq_itime);
}