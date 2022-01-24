#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_sport_t ;
struct TYPE_8__ {TYPE_1__* ocs; } ;
typedef  TYPE_2__ ocs_node_t ;
typedef  int int32_t ;
struct TYPE_7__ {int nodedb_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FC_ADDR_NAMESERVER ; 
 int OCS_NODEDB_PAUSE_NAMESERVER ; 
 int /*<<< orphan*/  __ocs_ns_init ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC4(ocs_sport_t *sport)
{
	ocs_node_t *ns;

	/* Instantiate a name services node */
	ns = FUNC1(sport, FC_ADDR_NAMESERVER);
	if (ns == NULL) {
		ns = FUNC0(sport, FC_ADDR_NAMESERVER, FALSE, FALSE);
		if (ns == NULL) {
			return -1;
		}
	}
	/* TODO: for found ns, should we be transitioning from here?
	 * breaks transition only 1. from within state machine or
	 * 2. if after alloc 
	 */
	if (ns->ocs->nodedb_mask & OCS_NODEDB_PAUSE_NAMESERVER) {
		FUNC2(ns, __ocs_ns_init);
	} else {
		FUNC3(ns, __ocs_ns_init, NULL);
	}
	return 0;
}