#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  max_qcount; int /*<<< orphan*/  call_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  max_qcount; int /*<<< orphan*/  call_count; } ;
struct TYPE_8__ {TYPE_3__ kbd; TYPE_1__ aux; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int call ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int
FUNC6(KBDC p)
{
#if KBDIO_DEBUG >= 2
    if (++call > 2000) {
	call = 0;
	log(LOG_DEBUG, "kbdc: kbd q: %d calls, max %d chars, "
			     "aux q: %d calls, max %d chars\n",
		       kbdcp(p)->kbd.call_count, kbdcp(p)->kbd.max_qcount,
		       kbdcp(p)->aux.call_count, kbdcp(p)->aux.max_qcount);
    }
#endif

    if (FUNC0(&FUNC1(p)->kbd)) 
        return FUNC4(&FUNC1(p)->kbd);
    if (!FUNC5(FUNC1(p)))
        return -1;		/* timeout */
    return FUNC3(FUNC1(p));
}