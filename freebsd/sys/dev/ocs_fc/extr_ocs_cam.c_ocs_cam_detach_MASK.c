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
struct TYPE_4__ {int num_vports; int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  devq; } ;
typedef  TYPE_1__ ocs_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

int32_t
FUNC4(ocs_t *ocs)
{
	int i = 0;

	for (i = (ocs->num_vports); i >= 0; i--) {
		FUNC3(ocs, i);
	}

	FUNC0(ocs->devq);

	if (FUNC2(&ocs->sim_lock))
		FUNC1(&ocs->sim_lock);

	return 0;
}