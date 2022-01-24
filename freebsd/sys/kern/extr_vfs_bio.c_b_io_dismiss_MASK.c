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
struct buf {int /*<<< orphan*/  b_flags; int /*<<< orphan*/  b_dep; int /*<<< orphan*/  b_xflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BX_ALTDATA ; 
 int /*<<< orphan*/  B_DIRECT ; 
 int /*<<< orphan*/  B_NOREUSE ; 
 int /*<<< orphan*/  B_RELBUF ; 
 int IO_DIRECT ; 
 int IO_EXT ; 
 int IO_NOREUSE ; 
 int IO_VMIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 

__attribute__((used)) static void
FUNC4(struct buf *bp, int ioflag, bool release)
{

	FUNC0((ioflag & IO_NOREUSE) == 0 || (ioflag & IO_VMIO) != 0,
	    ("buf %p non-VMIO noreuse", bp));

	if ((ioflag & IO_DIRECT) != 0)
		bp->b_flags |= B_DIRECT;
	if ((ioflag & IO_EXT) != 0)
		bp->b_xflags |= BX_ALTDATA;
	if ((ioflag & (IO_VMIO | IO_DIRECT)) != 0 && FUNC1(&bp->b_dep)) {
		bp->b_flags |= B_RELBUF;
		if ((ioflag & IO_NOREUSE) != 0)
			bp->b_flags |= B_NOREUSE;
		if (release)
			FUNC3(bp);
	} else if (release)
		FUNC2(bp);
}