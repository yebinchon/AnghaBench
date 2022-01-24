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
struct TYPE_8__ {TYPE_3__* ocs; } ;
typedef  TYPE_2__ ocs_xport_t ;
struct TYPE_9__ {int /*<<< orphan*/  hw; TYPE_1__* xport; scalar_t__ enable_ini; scalar_t__ config_tgt; } ;
typedef  TYPE_3__ ocs_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  stats_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int32_t
FUNC5(ocs_xport_t *xport)
{
	ocs_t *ocs = xport->ocs;

	/* free resources associated with target-server and initiator-client */
	if (ocs->config_tgt)
		FUNC3(ocs);

	if (ocs->enable_ini) {
		FUNC2(ocs);

		/*Shutdown FC Statistics timer*/
		if (FUNC4(&ocs->xport->stats_timer))
			FUNC0(&ocs->xport->stats_timer);
	}

	FUNC1(&ocs->hw);

	return 0;
}