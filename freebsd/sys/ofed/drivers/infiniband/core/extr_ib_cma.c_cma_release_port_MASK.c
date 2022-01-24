#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnet {int dummy; } ;
struct TYPE_5__ {struct vnet* net; } ;
struct TYPE_6__ {TYPE_1__ dev_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct TYPE_8__ {TYPE_3__ route; } ;
struct rdma_id_private {int /*<<< orphan*/  node; TYPE_4__ id; struct rdma_bind_list* bind_list; } ;
struct rdma_bind_list {int /*<<< orphan*/  port; int /*<<< orphan*/  ps; int /*<<< orphan*/  owners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_bind_list*) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rdma_id_private *id_priv)
{
	struct rdma_bind_list *bind_list = id_priv->bind_list;
	struct vnet *net = id_priv->id.route.addr.dev_addr.net;

	if (!bind_list)
		return;

	FUNC4(&lock);
	FUNC1(&id_priv->node);
	if (FUNC2(&bind_list->owners)) {
		FUNC0(net, bind_list->ps, bind_list->port);
		FUNC3(bind_list);
	}
	FUNC5(&lock);
}