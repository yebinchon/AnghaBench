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
struct qlnxr_qp {int /*<<< orphan*/  icid; int /*<<< orphan*/  srq; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct qlnxr_create_qp_uresp {int /*<<< orphan*/  rq_icid; void* rq_db_offset; void* rq_db2_offset; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DQ_PWM_OFFSET_TCM_FLAGS ; 
 int /*<<< orphan*/  DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD ; 
 int /*<<< orphan*/  DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD ; 
 scalar_t__ FUNC1 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC3(struct qlnxr_dev *dev,
	struct qlnxr_create_qp_uresp *uresp,
	struct qlnxr_qp *qp)
{
	qlnx_host_t	*ha;

	ha = dev->ha;

	/* Return if QP is associated with SRQ instead of RQ */
	FUNC2(ha, "enter qp->srq = %p\n", qp->srq);

	if (qp->srq)
		return;

	/* iWARP requires two doorbells per RQ. */
	if (FUNC1(dev)) {

		uresp->rq_db_offset =
			FUNC0(DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD);
		uresp->rq_db2_offset =
			FUNC0(DQ_PWM_OFFSET_TCM_FLAGS);

		FUNC2(ha, "uresp->rq_db_offset = 0x%x "
			"uresp->rq_db2_offset = 0x%x\n",
			uresp->rq_db_offset, uresp->rq_db2_offset);
	} else {
		uresp->rq_db_offset =
			FUNC0(DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD);
	}
	uresp->rq_icid = qp->icid;

	FUNC2(ha, "exit\n");
	return;
}