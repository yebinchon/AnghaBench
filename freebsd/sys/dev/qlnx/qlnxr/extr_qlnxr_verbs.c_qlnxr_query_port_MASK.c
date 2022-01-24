#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct qlnxr_dev {TYPE_2__* ha; int /*<<< orphan*/ * rdma_ctx; } ;
struct ib_port_attr {int phys_state; int gid_tbl_len; int pkey_tbl_len; int max_vl_num; int /*<<< orphan*/  max_msg_sz; int /*<<< orphan*/  active_width; int /*<<< orphan*/  active_speed; int /*<<< orphan*/  state; scalar_t__ qkey_viol_cntr; int /*<<< orphan*/  bad_pkey_cntr; scalar_t__ port_cap_flags; scalar_t__ sm_sl; scalar_t__ sm_lid; scalar_t__ lmc; scalar_t__ lid; int /*<<< orphan*/  active_mtu; int /*<<< orphan*/  max_mtu; } ;
struct ib_device {int dummy; } ;
struct ecore_rdma_port {scalar_t__ port_state; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  max_msg_size; int /*<<< orphan*/  pkey_bad_counter; } ;
struct TYPE_5__ {TYPE_1__* ifp; } ;
typedef  TYPE_2__ qlnx_host_t ;
struct TYPE_4__ {int /*<<< orphan*/  if_mtu; } ;

/* Variables and functions */
 scalar_t__ ECORE_RDMA_PORT_UP ; 
 int EINVAL ; 
 int /*<<< orphan*/  IB_MTU_4096 ; 
 int /*<<< orphan*/  IB_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_PORT_DOWN ; 
 int QLNXR_MAX_SGID ; 
 int QLNXR_ROCE_PKEY_TABLE_LEN ; 
 scalar_t__ FUNC0 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 struct ecore_rdma_port* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qlnxr_dev* FUNC4 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_port_attr*,int /*<<< orphan*/ ,int) ; 

int
FUNC7(struct ib_device *ibdev, uint8_t port,
	struct ib_port_attr *attr)
{
	struct qlnxr_dev	*dev;
	struct ecore_rdma_port	*rdma_port;
	qlnx_host_t		*ha;

	dev = FUNC4(ibdev);
	ha = dev->ha;

	FUNC1(ha, "enter\n");

	if (port > 1) {
		FUNC1(ha, "port [%d] > 1 \n", port);
		return -EINVAL;
	}

	if (dev->rdma_ctx == NULL) {
		FUNC1(ha, "rdma_ctx == NULL\n");
		return -EINVAL;
	}

	rdma_port = FUNC2(dev->rdma_ctx);
	FUNC6(attr, 0, sizeof *attr);

	if (rdma_port->port_state == ECORE_RDMA_PORT_UP) {
		attr->state = IB_PORT_ACTIVE;
		attr->phys_state = 5;
	} else {
		attr->state = IB_PORT_DOWN;
		attr->phys_state = 3;
	}

	attr->max_mtu = IB_MTU_4096;
	attr->active_mtu = FUNC5(dev->ha->ifp->if_mtu);
	attr->lid = 0;
	attr->lmc = 0;
	attr->sm_lid = 0;
	attr->sm_sl = 0;
	attr->port_cap_flags = 0;

	if (FUNC0(dev)) {
		attr->gid_tbl_len = 1;
		attr->pkey_tbl_len = 1;
	} else {
		attr->gid_tbl_len = QLNXR_MAX_SGID;
		attr->pkey_tbl_len = QLNXR_ROCE_PKEY_TABLE_LEN;
	}

	attr->bad_pkey_cntr = rdma_port->pkey_bad_counter;
	attr->qkey_viol_cntr = 0;

	FUNC3(rdma_port->link_speed,
				 &attr->active_speed, &attr->active_width);

	attr->max_msg_sz = rdma_port->max_msg_size;
	attr->max_vl_num = 4; /* TODO -> figure this one out... */

	FUNC1(ha, "state = %d phys_state = %d "
		" link_speed = %d active_speed = %d active_width = %d"
		" attr->gid_tbl_len = %d attr->pkey_tbl_len = %d"
		" max_msg_sz = 0x%x max_vl_num = 0x%x \n",
		attr->state, attr->phys_state,
		rdma_port->link_speed, attr->active_speed,
		attr->active_width, attr->gid_tbl_len, attr->pkey_tbl_len,
		attr->max_msg_sz, attr->max_vl_num);

	FUNC1(ha, "exit\n");
	return 0;
}