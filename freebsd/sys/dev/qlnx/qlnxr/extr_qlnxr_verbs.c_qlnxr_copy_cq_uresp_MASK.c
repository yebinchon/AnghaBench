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
typedef  int /*<<< orphan*/  uresp ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct qlnxr_create_cq_uresp {int /*<<< orphan*/  icid; int /*<<< orphan*/  db_offset; } ;
struct qlnxr_cq {int /*<<< orphan*/  icid; } ;
struct ib_udata {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct ib_udata*,struct qlnxr_create_cq_uresp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlnxr_create_cq_uresp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct qlnxr_dev *dev,
	struct qlnxr_cq *cq, struct ib_udata *udata)
{
	struct qlnxr_create_cq_uresp	uresp;
	int				rc;
	qlnx_host_t			*ha;

	ha = dev->ha;

	FUNC1(ha, "enter\n");

	FUNC3(&uresp, 0, sizeof(uresp));

	uresp.db_offset = FUNC0(DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT);
	uresp.icid = cq->icid;

	rc = FUNC2(udata, &uresp, sizeof(uresp));

	if (rc) {
		FUNC1(ha, "ib_copy_to_udata error cqid=0x%x[%d]\n",
			cq->icid, rc);
	}

	FUNC1(ha, "exit [%d]\n", rc);
	return rc;
}