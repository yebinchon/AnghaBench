#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zone ;
typedef  TYPE_1__* uma_zone_t ;
struct TYPE_8__ {scalar_t__ td_critnest; } ;
struct TYPE_7__ {int /*<<< orphan*/  uz_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_UMA ; 
 int /*<<< orphan*/  RANDOM_UMA ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  SKIP_NONE ; 
 TYPE_5__* curthread ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,void*,int /*<<< orphan*/ ) ; 

void
FUNC5(uma_zone_t zone, void *item, void *udata)
{

	/* Enable entropy collection for RANDOM_ENABLE_UMA kernel option */
	FUNC3(&zone, sizeof(zone), RANDOM_UMA);

	FUNC0(KTR_UMA, "uma_zfree_domain thread %x zone %s", curthread,
	    zone->uz_name);

	FUNC1(curthread->td_critnest == 0 || FUNC2(),
	    ("uma_zfree_domain: called with spinlock or critical section held"));

        /* uma_zfree(..., NULL) does nothing, to match free(9). */
        if (item == NULL)
                return;
	FUNC4(zone, item, udata, SKIP_NONE);
}