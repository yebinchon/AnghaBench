#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_3__ {int xsize; int ysize; int /*<<< orphan*/  scr; int /*<<< orphan*/  vtb; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(scr_stat *scp, int from, int count, int flip)
{
	vm_offset_t p;
	int c;
	int a;

	if (from + count > scp->xsize*scp->ysize)
		count = scp->xsize*scp->ysize - from;

	if (flip) {
		for (p = FUNC3(&scp->scr, from); count-- > 0; ++from) {
			c = FUNC2(&scp->vtb, from);
			a = FUNC1(&scp->vtb, from);
			a = FUNC5(a, TRUE);
			p = FUNC4(&scp->scr, p, c, a);
		}
	} else {
		FUNC0(&scp->vtb, from, &scp->scr, from, count);
	}
}