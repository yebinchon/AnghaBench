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
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct yp_event*,int /*<<< orphan*/ ) ; 
 struct yp_event* FUNC1 (int,int) ; 
 TYPE_2__* env ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  ye_entry ; 
 int /*<<< orphan*/  yp_fd_event ; 

void
FUNC6(void)
{
	int i;
	struct yp_event	*ye;

	for (i = 0; i < FUNC5(); i++) {
		if ((ye = FUNC1(1, sizeof(*ye))) == NULL)
			FUNC4(NULL);
		FUNC3(&ye->ye_event, i, EV_READ, yp_fd_event, NULL);
		FUNC2(&ye->ye_event, NULL);
		FUNC0(&env->sc_yp->yd_events, ye, ye_entry);
	}
}