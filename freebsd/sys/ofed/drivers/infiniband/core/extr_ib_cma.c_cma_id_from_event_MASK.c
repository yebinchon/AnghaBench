#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rdma_id_private {int dummy; } ;
struct rdma_bind_list {int dummy; } ;
typedef  struct rdma_id_private net_device ;
struct ib_cm_id {int /*<<< orphan*/  service_id; } ;
struct ib_cm_event {int dummy; } ;
struct cma_req_info {int /*<<< orphan*/  service_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 struct rdma_id_private* FUNC0 (struct rdma_id_private*) ; 
 struct rdma_id_private* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  RDMA_PS_SDP ; 
 struct rdma_id_private* FUNC4 (struct rdma_bind_list*,struct ib_cm_id*,struct ib_cm_event*,struct cma_req_info*,struct rdma_id_private*) ; 
 struct rdma_id_private* FUNC5 (struct ib_cm_event*,struct cma_req_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct rdma_bind_list* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ib_cm_event*,struct cma_req_info*) ; 
 int /*<<< orphan*/ * FUNC9 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rdma_id_private *FUNC12(struct ib_cm_id *cm_id,
						 struct ib_cm_event *ib_event,
						 struct net_device **net_dev)
{
	struct cma_req_info req;
	struct rdma_bind_list *bind_list;
	struct rdma_id_private *id_priv;
	int err;

	err = FUNC8(ib_event, &req);
	if (err)
		return FUNC1(err);

	if (FUNC11(cm_id->service_id) == RDMA_PS_SDP) {
		*net_dev = NULL;
		goto there_is_no_net_dev;
	}

	*net_dev = FUNC5(ib_event, &req);
	if (FUNC2(*net_dev)) {
		if (FUNC3(*net_dev) == -EAFNOSUPPORT) {
			/* Assuming the protocol is AF_IB */
			*net_dev = NULL;
		} else {
			return FUNC0(*net_dev);
		}
	}

there_is_no_net_dev:
	bind_list = FUNC7(*net_dev ? FUNC9(*net_dev) : &init_net,
				FUNC11(req.service_id),
				FUNC6(req.service_id));
	id_priv = FUNC4(bind_list, cm_id, ib_event, &req, *net_dev);
	if (FUNC2(id_priv) && *net_dev) {
		FUNC10(*net_dev);
		*net_dev = NULL;
	}

	return id_priv;
}