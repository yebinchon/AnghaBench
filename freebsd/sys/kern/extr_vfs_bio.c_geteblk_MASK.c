#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct buf {int /*<<< orphan*/  b_flags; } ;
struct TYPE_2__ {int td_pflags; } ;

/* Variables and functions */
 int BKVAMASK ; 
 int /*<<< orphan*/  B_INVAL ; 
 int GB_NOWAIT_BD ; 
 int TDP_BUFNEED ; 
 int /*<<< orphan*/  FUNC0 (struct buf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* curthread ; 
 struct buf* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

struct buf *
FUNC4(int size, int flags)
{
	struct buf *bp;
	int maxsize;

	maxsize = (size + BKVAMASK) & ~BKVAMASK;
	while ((bp = FUNC3(NULL, 0, 0, maxsize, flags)) == NULL) {
		if ((flags & GB_NOWAIT_BD) &&
		    (curthread->td_pflags & TDP_BUFNEED) != 0)
			return (NULL);
	}
	FUNC0(bp, size);
	FUNC2(FUNC1(bp), maxsize);
	bp->b_flags |= B_INVAL;	/* b_dep cleared by getnewbuf() */
	return (bp);
}