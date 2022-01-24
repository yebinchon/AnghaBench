#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kbd; int /*<<< orphan*/  aux; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBDD_DELAYTIME ; 
 int KBDS_AUX_BUFFER_FULL ; 
 int KBDS_BUFFER_FULL ; 
 int KBDS_KBD_BUFFER_FULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(KBDC p)
{
    int f;

    if (FUNC2(&FUNC3(p)->aux)) 
        return FUNC6(&FUNC3(p)->aux);
    f = FUNC5(FUNC3(p)) & KBDS_BUFFER_FULL;
    if (f == KBDS_KBD_BUFFER_FULL) {
        FUNC0(KBDD_DELAYTIME);
        FUNC1(&FUNC3(p)->kbd, FUNC4(FUNC3(p)));
        f = FUNC5(FUNC3(p)) & KBDS_BUFFER_FULL;
    }
    if (f == KBDS_AUX_BUFFER_FULL) {
        FUNC0(KBDD_DELAYTIME);
        return FUNC4(FUNC3(p));
    }
    return -1;		/* no data */
}