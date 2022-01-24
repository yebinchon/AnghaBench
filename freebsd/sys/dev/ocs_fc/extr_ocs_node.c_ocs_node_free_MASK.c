#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_16__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/ * current_state; } ;
struct TYPE_22__ {int /*<<< orphan*/  fc_id; } ;
struct TYPE_23__ {int /*<<< orphan*/  nodes_free_list; int /*<<< orphan*/  active_ios_lock; int /*<<< orphan*/  pend_frames_lock; TYPE_7__ sm; struct TYPE_23__* sport; int /*<<< orphan*/  node_list; TYPE_16__ rnode; int /*<<< orphan*/ * lookup; struct TYPE_23__* ocs; scalar_t__ fcp2device; int /*<<< orphan*/  gidpt_delay_timer; int /*<<< orphan*/  hw; scalar_t__ refound; struct TYPE_23__* xport; } ;
typedef  TYPE_1__ ocs_xport_t ;
typedef  TYPE_1__ ocs_t ;
typedef  TYPE_1__ ocs_sport_t ;
typedef  TYPE_1__ ocs_node_t ;
typedef  int ocs_hw_rtn_e ;
typedef  int int32_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FC_ADDR_NAMESERVER ; 
 int /*<<< orphan*/  OCS_EVT_ALL_CHILD_NODES_FREE ; 
 int /*<<< orphan*/  OCS_EVT_RSCN_RCVD ; 
 scalar_t__ FUNC0 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,...) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int32_t
FUNC21(ocs_node_t *node)
{
	ocs_sport_t *sport;
	ocs_t *ocs;
	ocs_xport_t *xport;
	ocs_hw_rtn_e rc = 0;
	ocs_node_t *ns = NULL;
	int post_all_free = FALSE;

	FUNC2(node, -1);
	FUNC2(node->sport, -1);
	FUNC2(node->ocs, -1);
	sport = node->sport;
	FUNC2(sport, -1);
	ocs = node->ocs;
	FUNC2(ocs->xport, -1);
	xport = ocs->xport;

	FUNC1(node, "Free'd\n");

	if(node->refound) {
		/*
		 * Save the name server node. We will send fake RSCN event at
		 * the end to handle ignored RSCN event during node deletion
		 */
		ns = FUNC13(node->sport, FC_ADDR_NAMESERVER);
	}

	/* Remove from node list */
	FUNC17(sport);
		FUNC10(&sport->node_list, node);

		/* Free HW resources */
		if (FUNC0((rc = FUNC7(&ocs->hw, &node->rnode)))) {
			FUNC12(ocs, "ocs_hw_node_free failed: %d\n", rc);
			rc = -1;
		}

		/* if the gidpt_delay_timer is still running, then delete it */
		if (FUNC19(&node->gidpt_delay_timer)) {
			FUNC4(&node->gidpt_delay_timer);
		}

		if (node->fcp2device) {
			FUNC3(node);
		}

		/* remove entry from sparse vector list */
		if (sport->lookup == NULL) {
			FUNC12(node->ocs, "assertion failed: sport lookup is NULL\n");
			FUNC18(sport);
			return -1;
		}

		FUNC20(sport->lookup, node->rnode.fc_id, NULL);

		/*
		 * If the node_list is empty, then post a ALL_CHILD_NODES_FREE event to the sport,
		 * after the lock is released.  The sport may be free'd as a result of the event.
		 */
		if (FUNC9(&sport->node_list)) {
			post_all_free = TRUE;
		}

	FUNC18(sport);

	if (post_all_free) {
		FUNC16(&sport->sm, OCS_EVT_ALL_CHILD_NODES_FREE, NULL);
	}

	node->sport = NULL;
	node->sm.current_state = NULL;

	FUNC14(node);
	FUNC11(&node->pend_frames_lock);
	FUNC11(&node->active_ios_lock);

	/* return to free list */
	FUNC5(ocs);
		FUNC8(&xport->nodes_free_list, node);
	FUNC6(ocs);

	if(ns != NULL) {
		/* sending fake RSCN event to name server node */
		FUNC15(ns, OCS_EVT_RSCN_RCVD, NULL);
	}

	return rc;
}