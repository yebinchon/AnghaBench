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
struct TYPE_2__ {scalar_t__ max_sges; int /*<<< orphan*/  pbl; } ;
struct qlnxr_qp {int err_bitmap; TYPE_1__ sq; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_send_wr {scalar_t__ num_sge; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 scalar_t__ QLNXR_MAX_SQE_ELEMENTS_PER_SQE ; 
 int QLNXR_QP_ERR_BAD_SR ; 
 int QLNXR_QP_ERR_SQ_FULL ; 
 int QLNXR_QP_ERR_SQ_PBL_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct qlnxr_qp*,struct ib_send_wr*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline bool
FUNC3(struct qlnxr_qp *qp, struct ib_send_wr *wr)
{
	int wq_is_full, err_wr, pbl_is_full;
	struct qlnxr_dev *dev = qp->dev;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter[qp, wr] = [%p,%p]\n", qp, wr);
 
	/* prevent SQ overflow and/or processing of a bad WR */
	err_wr = wr->num_sge > qp->sq.max_sges;
	wq_is_full = FUNC2(&qp->sq);
	pbl_is_full = FUNC1(&qp->sq.pbl) <
		      QLNXR_MAX_SQE_ELEMENTS_PER_SQE;
	if (wq_is_full || err_wr || pbl_is_full) {
		if (wq_is_full &&
		    !(qp->err_bitmap & QLNXR_QP_ERR_SQ_FULL)) {

			qp->err_bitmap |= QLNXR_QP_ERR_SQ_FULL;

			FUNC0(ha,
				"error: WQ is full. Post send on QP failed"
				" (this error appears only once) "
				"[qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\n",
				qp, wr, qp->err_bitmap);
		}

		if (err_wr &&
		    !(qp->err_bitmap & QLNXR_QP_ERR_BAD_SR)) {

			qp->err_bitmap |= QLNXR_QP_ERR_BAD_SR;

			FUNC0(ha,
				"error: WQ is bad. Post send on QP failed"
				" (this error appears only once) "
				"[qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\n",
				qp, wr, qp->err_bitmap);
		}

		if (pbl_is_full &&
		    !(qp->err_bitmap & QLNXR_QP_ERR_SQ_PBL_FULL)) {

			qp->err_bitmap |= QLNXR_QP_ERR_SQ_PBL_FULL;

			FUNC0(ha,
				"error: WQ PBL is full. Post send on QP failed"
				" (this error appears only once) "
				"[qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\n",
				qp, wr, qp->err_bitmap);
		}
		return false;
	}
	FUNC0(ha, "exit[qp, wr] = [%p,%p]\n", qp, wr);
	return true;
}