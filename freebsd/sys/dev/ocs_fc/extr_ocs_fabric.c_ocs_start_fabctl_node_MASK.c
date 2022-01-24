#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_sport_t ;
typedef  int /*<<< orphan*/  ocs_node_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FC_ADDR_CONTROLLER ; 
 int /*<<< orphan*/  __ocs_fabctl_init ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC3(ocs_sport_t *sport)
{
	ocs_node_t *fabctl;

	fabctl = FUNC1(sport, FC_ADDR_CONTROLLER);
	if (fabctl == NULL) {
		fabctl = FUNC0(sport, FC_ADDR_CONTROLLER, FALSE, FALSE);
		if (fabctl == NULL) {
			return -1;
		}
	}
	/* TODO: for found ns, should we be transitioning from here?
	 * breaks transition only 1. from within state machine or
	 * 2. if after alloc
	 */
	FUNC2(fabctl, __ocs_fabctl_init, NULL);
	return 0;
}