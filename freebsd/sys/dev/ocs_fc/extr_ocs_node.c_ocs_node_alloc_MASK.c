#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_21__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  void* uint32_t ;
struct TYPE_28__ {int /*<<< orphan*/  nodes_free_list; } ;
typedef  TYPE_2__ ocs_xport_t ;
struct TYPE_29__ {int /*<<< orphan*/  hw; TYPE_2__* xport; } ;
typedef  TYPE_3__ ocs_t ;
struct TYPE_30__ {int /*<<< orphan*/  lookup; int /*<<< orphan*/  node_list; scalar_t__ shutting_down; TYPE_3__* ocs; } ;
typedef  TYPE_4__ ocs_sport_t ;
struct TYPE_26__ {TYPE_5__* app; } ;
struct TYPE_27__ {TYPE_5__* node; int /*<<< orphan*/  indicator; } ;
struct TYPE_32__ {int size; TYPE_5__* virt; } ;
struct TYPE_31__ {int /*<<< orphan*/ * mgmt_functions; scalar_t__ evtdepth; TYPE_1__ sm; TYPE_21__ rnode; TYPE_6__ sparm_dma_buf; int /*<<< orphan*/  els_io_active_list; int /*<<< orphan*/  els_io_pend_list; int /*<<< orphan*/  active_ios; void* instance_index; int /*<<< orphan*/  active_ios_lock; int /*<<< orphan*/  pend_frames; int /*<<< orphan*/  pend_frames_lock; void* targ; void* init; TYPE_3__* ocs; TYPE_4__* sport; void* max_wr_xfer_size; } ;
typedef  TYPE_5__ ocs_node_t ;
typedef  TYPE_6__ ocs_dma_t ;
typedef  void* int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  node_mgmt_functions ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_21__*,void*,TYPE_4__*) ; 
 int /*<<< orphan*/  ocs_hw_sequence_t ; 
 int /*<<< orphan*/  ocs_io_t ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*,TYPE_5__*) ; 

ocs_node_t *
FUNC17(ocs_sport_t *sport, uint32_t port_id, uint8_t init, uint8_t targ)
{
	int32_t rc;
	ocs_node_t *node = NULL;
	uint32_t instance_index;
	uint32_t max_wr_xfer_size;
	ocs_t *ocs = sport->ocs;
	ocs_xport_t *xport = ocs->xport;
	ocs_dma_t sparm_dma_buf;

	FUNC0(sport, NULL);

	if (sport->shutting_down) {
		FUNC8(ocs, "node allocation when shutting down %06x", port_id);
		return NULL;
	}

	FUNC1(ocs);
		node = FUNC6(&xport->nodes_free_list);
	FUNC2(ocs);
	if (node == NULL) {
		FUNC9(ocs, "node allocation failed %06x", port_id);
		return NULL;
	}

	/* Save persistent values across memset zero */
	instance_index = node->instance_index;
	max_wr_xfer_size = node->max_wr_xfer_size;
	sparm_dma_buf = node->sparm_dma_buf;

	FUNC10(node, 0, sizeof(*node));
	node->instance_index = instance_index;
	node->max_wr_xfer_size = max_wr_xfer_size;
	node->sparm_dma_buf = sparm_dma_buf;
	node->rnode.indicator = UINT32_MAX;

	node->sport = sport;
	FUNC14(sport);

		node->ocs = ocs;
		node->init = init;
		node->targ = targ;

		rc = FUNC3(&ocs->hw, &node->rnode, port_id, sport);
		if (rc) {
			FUNC9(ocs, "ocs_hw_node_alloc failed: %d\n", rc);
			FUNC15(sport);

			/* Return back to pool. */
			FUNC1(ocs);
			FUNC4(&xport->nodes_free_list, node);
			FUNC2(ocs);

			return NULL;
		}
		FUNC4(&sport->node_list, node);

		FUNC11(node);
		FUNC7(ocs, &node->pend_frames_lock, "pend_frames_lock[%d]", node->instance_index);
		FUNC5(&node->pend_frames, ocs_hw_sequence_t, link);
		FUNC7(ocs, &node->active_ios_lock, "active_ios[%d]", node->instance_index);
		FUNC5(&node->active_ios, ocs_io_t, link);
		FUNC5(&node->els_io_pend_list, ocs_io_t, link);
		FUNC5(&node->els_io_active_list, ocs_io_t, link);
		FUNC13(node);

		/* zero the service parameters */
		FUNC10(node->sparm_dma_buf.virt, 0, node->sparm_dma_buf.size);

		node->rnode.node = node;
		node->sm.app = node;
		node->evtdepth = 0;

		FUNC12(node);

		FUNC16(sport->lookup, port_id, node);
	FUNC15(sport);
	node->mgmt_functions = &node_mgmt_functions;

	return node;
}