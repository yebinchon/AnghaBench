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
struct mtx {int dummy; } ;
struct buf {int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 
 struct mtx* FUNC1 (int /*<<< orphan*/ ,struct buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 

void
FUNC4(struct buf *bp)
{
	struct mtx *mtxp;

	mtxp = FUNC1(mtxpool_sleep, bp);
	FUNC0(mtxp);
	bp->b_flags |= B_DONE;
	FUNC3(bp);
	FUNC2(mtxp);
}