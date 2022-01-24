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
struct yp_event {int /*<<< orphan*/  ye_event; } ;
struct TYPE_4__ {TYPE_1__* sc_yp; } ;
struct TYPE_3__ {int /*<<< orphan*/  yd_events; } ;

/* Variables and functions */
 struct yp_event* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct yp_event*,int /*<<< orphan*/ ) ; 
 TYPE_2__* env ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct yp_event*) ; 
 int /*<<< orphan*/  ye_entry ; 

void
FUNC4(void)
{
	struct yp_event	*ye;

	while ((ye = FUNC0(&env->sc_yp->yd_events)) != NULL) {
		FUNC1(&env->sc_yp->yd_events, ye, ye_entry);
		FUNC2(&ye->ye_event);
		FUNC3(ye);
	}
}