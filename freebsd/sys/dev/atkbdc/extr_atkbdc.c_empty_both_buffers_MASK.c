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
struct TYPE_4__ {int /*<<< orphan*/  aux; int /*<<< orphan*/  kbd; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int KBDD_DELAYTIME ; 
 int KBDS_ANY_BUFFER_FULL ; 
 int KBDS_BUFFER_FULL ; 
 int KBDS_KBD_BUFFER_FULL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

void
FUNC6(KBDC p, int wait)
{
    int t;
    int f;
    int waited = 0;
#if KBDIO_DEBUG >= 2
    int c1 = 0;
    int c2 = 0;
#endif
    int delta = 2;

    for (t = wait; t > 0; ) { 
        if ((f = FUNC5(FUNC2(p))) & KBDS_ANY_BUFFER_FULL) {
	    FUNC0(KBDD_DELAYTIME);
            (void)FUNC4(FUNC2(p));
#if KBDIO_DEBUG >= 2
	    if ((f & KBDS_BUFFER_FULL) == KBDS_KBD_BUFFER_FULL)
		++c1;
            else
		++c2;
#endif
	    t = wait;
	} else {
	    t -= delta;
	}

	/*
	 * Some systems (Intel/IBM blades) do not have keyboard devices and
	 * will thus hang in this procedure. Time out after delta seconds to
	 * avoid this hang -- the keyboard attach will fail later on.
	 */
        waited += (delta * 1000);
        if (waited == (delta * 1000000))
	    return;

	FUNC0(delta*1000);
    }
#if KBDIO_DEBUG >= 2
    if ((c1 > 0) || (c2 > 0))
        log(LOG_DEBUG, "kbdc: %d:%d char read (empty_both_buffers)\n", c1, c2);
#endif

    FUNC1(&FUNC2(p)->kbd);
    FUNC1(&FUNC2(p)->aux);
}