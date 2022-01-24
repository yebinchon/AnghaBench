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
struct pie_status {int /*<<< orphan*/  lock_mtx; int /*<<< orphan*/  aqm_pie_callout; } ;
struct fq_pie_flow {struct pie_status pst; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBT_1US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fq_pie_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fqpie_callout_cleanup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct fq_pie_flow *q)
{
	struct pie_status *pst  = &q->pst;

	FUNC1(&pst->lock_mtx);
	FUNC0(&pst->aqm_pie_callout,
		SBT_1US, 0, fqpie_callout_cleanup, q, 0);
	FUNC2(&pst->lock_mtx);
	return 0;
}