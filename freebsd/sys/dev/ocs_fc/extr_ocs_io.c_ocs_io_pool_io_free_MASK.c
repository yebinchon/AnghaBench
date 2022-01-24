#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* xport; int /*<<< orphan*/  hw; } ;
typedef  TYPE_2__ ocs_t ;
struct TYPE_11__ {int io_free; int /*<<< orphan*/ * hio; } ;
typedef  TYPE_3__ ocs_io_t ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pool; TYPE_2__* ocs; } ;
typedef  TYPE_4__ ocs_io_pool_t ;
typedef  int /*<<< orphan*/  ocs_hw_io_t ;
struct TYPE_9__ {int /*<<< orphan*/  io_total_free; int /*<<< orphan*/  io_active_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(ocs_io_pool_t *io_pool, ocs_io_t *io)
{
	ocs_t *ocs;
	ocs_hw_io_t *hio = NULL;

	FUNC0(io_pool);

	ocs = io_pool->ocs;

	FUNC4(&io_pool->lock);
		hio = io->hio;
		io->hio = NULL;
		FUNC5(io_pool->pool, io);
	FUNC6(&io_pool->lock);

	if (hio) {
		FUNC3(&ocs->hw, hio);
	}
	io->io_free = 1;
	FUNC2(&ocs->xport->io_active_count, 1);
	FUNC1(&ocs->xport->io_total_free, 1);
}