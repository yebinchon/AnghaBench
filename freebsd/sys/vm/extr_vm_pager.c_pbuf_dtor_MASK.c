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
struct buf {scalar_t__ b_rcred; scalar_t__ b_wcred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 scalar_t__ NOCRED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(void *mem, int size, void *arg)
{
	struct buf *bp = mem;

	if (bp->b_rcred != NOCRED) {
		FUNC1(bp->b_rcred);
		bp->b_rcred = NOCRED;
	}
	if (bp->b_wcred != NOCRED) {
		FUNC1(bp->b_wcred);
		bp->b_wcred = NOCRED;
	}

	FUNC0(bp);
}