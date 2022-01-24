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
struct vnet {int dummy; } ;
struct TYPE_4__ {struct vnet* net; } ;
struct TYPE_5__ {TYPE_1__ dev_addr; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct rdma_cm_id {int ps; int qp_type; TYPE_3__ route; int /*<<< orphan*/  event_handler; void* context; } ;
struct rdma_id_private {struct rdma_cm_id id; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  listen_list; int /*<<< orphan*/  handler_mutex; int /*<<< orphan*/  refcount; int /*<<< orphan*/  comp; int /*<<< orphan*/  qp_mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  owner; } ;
typedef  int /*<<< orphan*/  rdma_cm_event_handler ;
typedef  enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct rdma_cm_id* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_CM_IDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rdma_id_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct rdma_cm_id *FUNC9(struct vnet *net,
				  rdma_cm_event_handler event_handler,
				  void *context, enum rdma_port_space ps,
				  enum ib_qp_type qp_type)
{
	struct rdma_id_private *id_priv;

#ifdef VIMAGE
	if (net == NULL)
		return ERR_PTR(-EINVAL);
#endif
	id_priv = FUNC5(sizeof *id_priv, GFP_KERNEL);
	if (!id_priv)
		return FUNC0(-ENOMEM);

	id_priv->owner = FUNC8(current);
	id_priv->state = RDMA_CM_IDLE;
	id_priv->id.context = context;
	id_priv->id.event_handler = event_handler;
	id_priv->id.ps = ps;
	id_priv->id.qp_type = qp_type;
	FUNC7(&id_priv->lock);
	FUNC6(&id_priv->qp_mutex);
	FUNC4(&id_priv->comp);
	FUNC2(&id_priv->refcount, 1);
	FUNC6(&id_priv->handler_mutex);
	FUNC1(&id_priv->listen_list);
	FUNC1(&id_priv->mc_list);
	FUNC3(&id_priv->seq_num, sizeof id_priv->seq_num);
	id_priv->id.route.addr.dev_addr.net = net;

	return &id_priv->id;
}