#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_9__ {int /*<<< orphan*/  active_ios_lock; int /*<<< orphan*/  active_ios; int /*<<< orphan*/  io_alloc_enabled; } ;
typedef  TYPE_1__ ocs_node_t ;
struct TYPE_10__ {TYPE_1__* node; int /*<<< orphan*/  display_name; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_2__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_NODE_ACTIVE_IO_LIST_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	ocs_io_t *io = (ocs_io_t *)arg;
	ocs_t *ocs = io->ocs;
	ocs_node_t *node = io->node;
	int send_empty_event;

	FUNC0(io != NULL);

	FUNC8(io, "freeing io 0x%p %s\n", io, io->display_name);

	FUNC0(FUNC1(io));

	FUNC5(&node->active_ios_lock);
		FUNC4(&node->active_ios, io);
		send_empty_event = (!node->io_alloc_enabled) && FUNC3(&node->active_ios);
	FUNC7(&node->active_ios_lock);

	if (send_empty_event) {
		FUNC6(node, OCS_EVT_NODE_ACTIVE_IO_LIST_EMPTY, NULL);
	}

	io->node = NULL;
	FUNC2(ocs, io);

}