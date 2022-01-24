#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rdma_conn_param {int retry_count; int rnr_retry_count; int initiator_depth; int flags; int private_data_len; void* private_data; int /*<<< orphan*/  responder_resources; } ;
struct rdma_cm_id {struct iser_conn* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_qp_rd_atom; } ;
struct iser_device {TYPE_1__ dev_attr; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {struct ib_conn ib_conn; } ;
struct iser_cm_hdr {int retry_count; int rnr_retry_count; int initiator_depth; int flags; int private_data_len; void* private_data; int /*<<< orphan*/  responder_resources; } ;
typedef  int /*<<< orphan*/  req_hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*,int) ; 
 int ISER_SEND_W_INV_NOT_SUPPORTED ; 
 int ISER_ZBVA_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_cm_id*) ; 
 int FUNC2 (struct ib_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rdma_cm_id*,struct rdma_conn_param*) ; 

__attribute__((used)) static void
FUNC5(struct rdma_cm_id *cma_id)
{
	struct rdma_conn_param conn_param;
	int    ret;
	struct iser_cm_hdr req_hdr;
	struct iser_conn *iser_conn = cma_id->context;
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	struct iser_device *device = ib_conn->device;

	ret = FUNC2(ib_conn);
	if (ret)
		goto failure;

	FUNC3(&conn_param, 0, sizeof conn_param);
	conn_param.responder_resources = device->dev_attr.max_qp_rd_atom;
	conn_param.retry_count	       = 7;
	conn_param.rnr_retry_count     = 6;
	/*
	 * Initiaotr depth should not be set, but in order to compat
	 * with old targets, we keep this value set.
	 */
	conn_param.initiator_depth     = 1;

	FUNC3(&req_hdr, 0, sizeof(req_hdr));
	req_hdr.flags = (ISER_ZBVA_NOT_SUPPORTED |
			ISER_SEND_W_INV_NOT_SUPPORTED);
	conn_param.private_data		= (void *)&req_hdr;
	conn_param.private_data_len	= sizeof(struct iser_cm_hdr);

	ret = FUNC4(cma_id, &conn_param);
	if (ret) {
		FUNC0("conn %p failure connecting: %d", iser_conn, ret);
		goto failure;
	}

	return;
failure:
	FUNC1(cma_id);
}