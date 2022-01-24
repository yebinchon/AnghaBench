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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ntb_transport_qp {int /*<<< orphan*/  rxc_db_work; int /*<<< orphan*/  rxc_tq; scalar_t__ link_is_up; } ;
struct ntb_transport_ctx {int qp_bitmap; struct ntb_transport_qp* qp_vec; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *data, uint32_t vector)
{
	struct ntb_transport_ctx *nt = data;
	struct ntb_transport_qp *qp;
	uint64_t vec_mask;
	unsigned qp_num;

	vec_mask = FUNC4(nt->dev, vector);
	vec_mask &= nt->qp_bitmap;
	if ((vec_mask & (vec_mask - 1)) != 0)
		vec_mask &= FUNC2(nt->dev);
	if (vec_mask != 0) {
		FUNC3(nt->dev, vec_mask);
		FUNC1(nt->dev, vec_mask);
	}
	while (vec_mask != 0) {
		qp_num = FUNC0(vec_mask) - 1;

		qp = &nt->qp_vec[qp_num];
		if (qp->link_is_up)
			FUNC5(qp->rxc_tq, &qp->rxc_db_work);

		vec_mask &= ~(1ull << qp_num);
	}
}