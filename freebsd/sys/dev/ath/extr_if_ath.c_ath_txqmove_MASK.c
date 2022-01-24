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
struct ath_txq {scalar_t__ axq_aggr_depth; scalar_t__ axq_depth; int /*<<< orphan*/ * axq_link; int /*<<< orphan*/  axq_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_txq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 

void
FUNC2(struct ath_txq *dst, struct ath_txq *src)
{

	FUNC0(src);
	FUNC0(dst);

	FUNC1(&dst->axq_q, &src->axq_q, bf_list);
	dst->axq_link = src->axq_link;
	src->axq_link = NULL;
	dst->axq_depth += src->axq_depth;
	dst->axq_aggr_depth += src->axq_aggr_depth;
	src->axq_depth = 0;
	src->axq_aggr_depth = 0;
}