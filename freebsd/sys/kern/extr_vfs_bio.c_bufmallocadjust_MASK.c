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
struct buf {int b_flags; int b_bufsize; } ;

/* Variables and functions */
 int B_MALLOC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  bufmallocspace ; 

__attribute__((used)) static void
FUNC3(struct buf *bp, int bufsize)
{
	int diff;

	FUNC0((bp->b_flags & B_MALLOC) != 0,
	    ("bufmallocadjust: non-malloc buf %p", bp));
	diff = bufsize - bp->b_bufsize;
	if (diff < 0)
		FUNC2(&bufmallocspace, -diff);
	else
		FUNC1(&bufmallocspace, diff);
	bp->b_bufsize = bufsize;
}