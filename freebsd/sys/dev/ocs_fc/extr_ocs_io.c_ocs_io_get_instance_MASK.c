#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {TYPE_3__* io_pool; } ;
typedef  TYPE_1__ ocs_xport_t ;
struct TYPE_6__ {TYPE_1__* xport; } ;
typedef  TYPE_2__ ocs_t ;
typedef  int /*<<< orphan*/  ocs_io_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ocs_io_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ocs_io_t *
FUNC1(ocs_t *ocs, uint32_t index)
{
	ocs_xport_t *xport = ocs->xport;
	ocs_io_pool_t *io_pool = xport->io_pool;
	return FUNC0(io_pool->pool, index);
}