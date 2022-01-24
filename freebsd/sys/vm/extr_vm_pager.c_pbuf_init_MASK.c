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
struct buf {scalar_t__ b_xflags; int /*<<< orphan*/  b_wcred; int /*<<< orphan*/  b_rcred; int /*<<< orphan*/  b_dep; int /*<<< orphan*/  b_kvasize; int /*<<< orphan*/ * b_kvabase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  NOCRED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *mem, int size, int flags)
{
	struct buf *bp = mem;

	bp->b_kvabase = (void *)FUNC2(MAXPHYS);
	if (bp->b_kvabase == NULL)
		return (ENOMEM);
	bp->b_kvasize = MAXPHYS;
	FUNC0(bp);
	FUNC1(&bp->b_dep);
	bp->b_rcred = bp->b_wcred = NOCRED;
	bp->b_xflags = 0;

	return (0);
}