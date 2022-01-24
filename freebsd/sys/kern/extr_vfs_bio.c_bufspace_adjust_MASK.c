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
struct bufdomain {long bd_bufspacethresh; int /*<<< orphan*/  bd_bufspace; } ;
struct buf {int b_flags; int b_bufsize; } ;

/* Variables and functions */
 int B_MALLOC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 long FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct bufdomain* FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufdomain*) ; 

__attribute__((used)) static void
FUNC5(struct buf *bp, int bufsize)
{
	struct bufdomain *bd;
	long space;
	int diff;

	FUNC0((bp->b_flags & B_MALLOC) == 0,
	    ("bufspace_adjust: malloc buf %p", bp));
	bd = FUNC3(bp);
	diff = bufsize - bp->b_bufsize;
	if (diff < 0) {
		FUNC2(&bd->bd_bufspace, -diff);
	} else if (diff > 0) {
		space = FUNC1(&bd->bd_bufspace, diff);
		/* Wake up the daemon on the transition. */
		if (space < bd->bd_bufspacethresh &&
		    space + diff >= bd->bd_bufspacethresh)
			FUNC4(bd);
	}
	bp->b_bufsize = bufsize;
}