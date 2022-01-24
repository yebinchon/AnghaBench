#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pa_topmode; size_t pa_plugin; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pl_init ) () ;int /*<<< orphan*/  (* pl_shutdown ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ PMCSTAT_TOP_DELTA ; 
 TYPE_2__ args ; 
 TYPE_1__* plugins ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{

	FUNC0();

	/* Reset everythings if delta mode. */
	if (args.pa_topmode == PMCSTAT_TOP_DELTA) {
		if (plugins[args.pa_plugin].pl_shutdown != NULL)
			plugins[args.pa_plugin].pl_shutdown(NULL);
		FUNC1(0);
		if (plugins[args.pa_plugin].pl_init != NULL)
			plugins[args.pa_plugin].pl_init();
	}
}