#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* event_handler ) (TYPE_1__*,struct rdma_cm_event*) ;} ;
struct rdma_id_private {int /*<<< orphan*/  handler_mutex; TYPE_1__ id; int /*<<< orphan*/  cma_dev; } ;
struct rdma_dev_addr {int dummy; } ;
struct rdma_cm_event {int status; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_CM_ADDR_BOUND ; 
 int /*<<< orphan*/  RDMA_CM_ADDR_QUERY ; 
 int /*<<< orphan*/  RDMA_CM_ADDR_RESOLVED ; 
 int /*<<< orphan*/  RDMA_CM_DESTROYING ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ADDR_ERROR ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ADDR_RESOLVED ; 
 int FUNC0 (struct rdma_id_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_cm_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,struct rdma_cm_event*) ; 

__attribute__((used)) static void FUNC12(int status, struct sockaddr *src_addr,
			 struct rdma_dev_addr *dev_addr, void *context)
{
	struct rdma_id_private *id_priv = context;
	struct rdma_cm_event event;

	FUNC6(&event, 0, sizeof event);
	FUNC7(&id_priv->handler_mutex);
	if (!FUNC1(id_priv, RDMA_CM_ADDR_QUERY,
			   RDMA_CM_ADDR_RESOLVED))
		goto out;

	FUNC5(FUNC4(id_priv), src_addr, FUNC9(src_addr));
	if (!status && !id_priv->cma_dev)
		status = FUNC0(id_priv, NULL);

	if (status) {
		if (!FUNC1(id_priv, RDMA_CM_ADDR_RESOLVED,
				   RDMA_CM_ADDR_BOUND))
			goto out;
		event.event = RDMA_CM_EVENT_ADDR_ERROR;
		event.status = status;
	} else
		event.event = RDMA_CM_EVENT_ADDR_RESOLVED;

	if (id_priv->id.event_handler(&id_priv->id, &event)) {
		FUNC3(id_priv, RDMA_CM_DESTROYING);
		FUNC8(&id_priv->handler_mutex);
		FUNC2(id_priv);
		FUNC10(&id_priv->id);
		return;
	}
out:
	FUNC8(&id_priv->handler_mutex);
	FUNC2(id_priv);
}