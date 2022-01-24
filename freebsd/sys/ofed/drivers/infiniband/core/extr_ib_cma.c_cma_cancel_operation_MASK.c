#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;
struct rdma_id_private {int /*<<< orphan*/  cma_dev; TYPE_3__ id; } ;
typedef  enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;

/* Variables and functions */
#define  RDMA_CM_ADDR_QUERY 130 
#define  RDMA_CM_LISTEN 129 
#define  RDMA_CM_ROUTE_QUERY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rdma_id_private *id_priv,
				 enum rdma_cm_state state)
{
	switch (state) {
	case RDMA_CM_ADDR_QUERY:
		FUNC4(&id_priv->id.route.addr.dev_addr);
		break;
	case RDMA_CM_ROUTE_QUERY:
		FUNC2(id_priv);
		break;
	case RDMA_CM_LISTEN:
		if (FUNC0(FUNC3(id_priv)) && !id_priv->cma_dev)
			FUNC1(id_priv);
		break;
	default:
		break;
	}
}