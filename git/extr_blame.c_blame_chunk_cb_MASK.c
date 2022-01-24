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
struct blame_chunk_cb_data {long offset; int /*<<< orphan*/  ignore_diffs; int /*<<< orphan*/  target; int /*<<< orphan*/  parent; int /*<<< orphan*/  srcq; int /*<<< orphan*/  dstq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long,long,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(long start_a, long count_a,
			  long start_b, long count_b, void *data)
{
	struct blame_chunk_cb_data *d = data;
	if (start_a - start_b != d->offset)
		FUNC1("internal error in blame::blame_chunk_cb");
	FUNC0(&d->dstq, &d->srcq, start_b, start_a - start_b,
		    start_b + count_b, count_a, d->parent, d->target,
		    d->ignore_diffs);
	d->offset = start_a + count_a - (start_b + count_b);
	return 0;
}