#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qlnxr_dev {TYPE_2__* ha; } ;
struct qlnxr_cq {scalar_t__ cq_type; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  arm_flags; scalar_t__ cq_cons; int /*<<< orphan*/  icid; scalar_t__ destroyed; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__* ifp; } ;
typedef  TYPE_2__ qlnx_host_t ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_5__ {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_UCM_ROCE_CQ_ARM_CF_CMD ; 
 int /*<<< orphan*/  DQ_UCM_ROCE_CQ_ARM_SE_CF_CMD ; 
 int EINVAL ; 
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_SOLICITED ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ QLNXR_CQ_TYPE_GSI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,struct qlnxr_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,struct ib_cq*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct qlnxr_dev*,struct qlnxr_cq*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct qlnxr_cq* FUNC3 (struct ib_cq*) ; 
 struct qlnxr_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
        struct qlnxr_cq *cq = FUNC3(ibcq);
        unsigned long sflags;
        struct qlnxr_dev *dev;
	qlnx_host_t	*ha;

	dev = FUNC4((ibcq->device));
	ha = dev->ha;

	FUNC1(ha, "enter ibcq = %p flags = 0x%x "
		"cp = %p cons = 0x%x cq_type = 0x%x\n", ibcq,
		flags, cq, cq->cq_cons, cq->cq_type);

	if (!(ha->ifp->if_drv_flags & IFF_DRV_RUNNING))
		return -EINVAL;

	if (cq->destroyed) {
		FUNC0(ha, "cq was already destroyed cq = %p icid=%d\n",
			cq, cq->icid);
		return -EINVAL;
	}

        if (cq->cq_type == QLNXR_CQ_TYPE_GSI) {
                return 0;
        }

        FUNC5(&cq->cq_lock, sflags);

        cq->arm_flags = 0;

        if (flags & IB_CQ_SOLICITED) {
                cq->arm_flags |= DQ_UCM_ROCE_CQ_ARM_SE_CF_CMD;
        }
        if (flags & IB_CQ_NEXT_COMP) {
                cq->arm_flags |= DQ_UCM_ROCE_CQ_ARM_CF_CMD;
        }

        FUNC2(dev, cq, (cq->cq_cons - 1), cq->arm_flags);

        FUNC6(&cq->cq_lock, sflags);

	FUNC1(ha, "exit ibcq = %p flags = 0x%x\n", ibcq, flags);
        return 0;
}