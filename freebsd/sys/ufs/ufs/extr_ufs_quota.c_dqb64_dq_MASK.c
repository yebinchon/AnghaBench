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
struct dquot {void* dq_itime; void* dq_btime; void* dq_curinodes; void* dq_isoftlimit; void* dq_ihardlimit; void* dq_curblocks; void* dq_bsoftlimit; void* dq_bhardlimit; } ;
struct dqblk64 {int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_isoftlimit; int /*<<< orphan*/  dqb_ihardlimit; int /*<<< orphan*/  dqb_curblocks; int /*<<< orphan*/  dqb_bsoftlimit; int /*<<< orphan*/  dqb_bhardlimit; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(const struct dqblk64 *dqb64, struct dquot *dq)
{

	dq->dq_bhardlimit = FUNC0(dqb64->dqb_bhardlimit);
	dq->dq_bsoftlimit = FUNC0(dqb64->dqb_bsoftlimit);
	dq->dq_curblocks = FUNC0(dqb64->dqb_curblocks);
	dq->dq_ihardlimit = FUNC0(dqb64->dqb_ihardlimit);
	dq->dq_isoftlimit = FUNC0(dqb64->dqb_isoftlimit);
	dq->dq_curinodes = FUNC0(dqb64->dqb_curinodes);
	dq->dq_btime = FUNC0(dqb64->dqb_btime);
	dq->dq_itime = FUNC0(dqb64->dqb_itime);
}