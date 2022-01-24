#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_t ;
typedef  int /*<<< orphan*/  ocs_sport_t ;
struct TYPE_5__ {int /*<<< orphan*/ * sport; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_1__ ocs_node_t ;
typedef  int /*<<< orphan*/  ocs_node_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ADDR_NAMESERVER ; 
 int /*<<< orphan*/  OCS_EVT_RSCN_RCVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(ocs_node_t *node, ocs_node_cb_t *cbdata)
{
	ocs_t *ocs = node->ocs;
	ocs_sport_t *sport = node->sport;
	ocs_node_t *ns;

	/* Forward this event to the name-services node */
	ns = FUNC1(sport, FC_ADDR_NAMESERVER);
	if (ns != NULL)  {
		FUNC2(ns, OCS_EVT_RSCN_RCVD, cbdata);
	} else {
		FUNC0(ocs, "can't find name server node\n");
	}
}