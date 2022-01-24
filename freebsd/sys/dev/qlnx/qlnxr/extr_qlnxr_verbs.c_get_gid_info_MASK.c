#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct qlnxr_qp {size_t sgid_idx; } ;
struct qlnxr_dev {TYPE_1__* sgid_tbl; int /*<<< orphan*/ * ha; } ;
struct TYPE_8__ {int /*<<< orphan*/ * raw; } ;
struct TYPE_9__ {TYPE_2__ dgid; } ;
struct TYPE_10__ {TYPE_3__ grh; } ;
struct ib_qp_attr {TYPE_4__ ah_attr; } ;
struct ib_qp {int dummy; } ;
struct TYPE_12__ {void** dwords; int /*<<< orphan*/ * bytes; } ;
struct TYPE_11__ {void** dwords; int /*<<< orphan*/ * bytes; } ;
struct ecore_rdma_modify_qp_in_params {TYPE_6__ dgid; TYPE_5__ sgid; int /*<<< orphan*/  vlan_id; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_7__ {int /*<<< orphan*/ * raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ib_qp_attr*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct ib_qp *ibqp, struct ib_qp_attr *attr,
	int attr_mask,
	struct qlnxr_dev *dev,
	struct qlnxr_qp *qp,
	struct ecore_rdma_modify_qp_in_params *qp_params)
{
	int		i;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");

	FUNC1(&qp_params->sgid.bytes[0],
	       &dev->sgid_tbl[qp->sgid_idx].raw[0],
	       sizeof(qp_params->sgid.bytes));
	FUNC1(&qp_params->dgid.bytes[0],
	       &attr->ah_attr.grh.dgid.raw[0],
	       sizeof(qp_params->dgid));

	FUNC3(ha, attr, attr_mask, &qp_params->vlan_id);

	for (i = 0; i < (sizeof(qp_params->sgid.dwords)/sizeof(uint32_t)); i++) {
		qp_params->sgid.dwords[i] = FUNC2(qp_params->sgid.dwords[i]);
		qp_params->dgid.dwords[i] = FUNC2(qp_params->dgid.dwords[i]);
	}

	FUNC0(ha, "exit\n");
	return;
}