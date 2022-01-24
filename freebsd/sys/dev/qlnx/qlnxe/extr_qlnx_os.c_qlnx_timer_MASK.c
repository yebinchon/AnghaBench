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
struct TYPE_4__ {int /*<<< orphan*/  qlnx_callout; scalar_t__ storm_stats_gather; int /*<<< orphan*/  hw_stats; int /*<<< orphan*/  cdev; int /*<<< orphan*/  err_task; int /*<<< orphan*/  err_taskqueue; scalar_t__ error_recovery; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	qlnx_host_t	*ha;

	ha = (qlnx_host_t *)arg;

	if (ha->error_recovery) {
		ha->error_recovery = 0;
		FUNC3(ha->err_taskqueue, &ha->err_task);
		return;
	}

       	FUNC1(&ha->cdev, &ha->hw_stats);

	if (ha->storm_stats_gather)
		FUNC2(ha);

	FUNC0(&ha->qlnx_callout, hz, qlnx_timer, ha);

	return;
}