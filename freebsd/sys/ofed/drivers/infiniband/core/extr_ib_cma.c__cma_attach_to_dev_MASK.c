#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  transport; } ;
struct TYPE_6__ {TYPE_5__ dev_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_8__ {TYPE_2__ route; TYPE_4__* device; } ;
struct rdma_id_private {int /*<<< orphan*/  list; TYPE_3__ id; scalar_t__ gid_type; struct cma_device* cma_dev; } ;
struct cma_device {int /*<<< orphan*/  id_list; TYPE_4__* device; } ;
struct TYPE_9__ {int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cma_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rdma_id_private *id_priv,
			       struct cma_device *cma_dev)
{
	FUNC0(cma_dev);
	id_priv->cma_dev = cma_dev;
	id_priv->gid_type = 0;
	id_priv->id.device = cma_dev->device;
	id_priv->id.route.addr.dev_addr.transport =
		FUNC2(cma_dev->device->node_type);
	FUNC1(&id_priv->list, &cma_dev->id_list);
}