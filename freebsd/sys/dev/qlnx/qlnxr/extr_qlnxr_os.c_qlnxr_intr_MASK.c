#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct regpair {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_4__ {scalar_t__ cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_2__*,scalar_t__) ;} ;
struct qlnxr_cq {scalar_t__ sig; int /*<<< orphan*/  cnq_notif; TYPE_2__ ibcq; int /*<<< orphan*/  destroyed; scalar_t__ arm_flags; } ;
struct qlnxr_cnq {int /*<<< orphan*/  sb; int /*<<< orphan*/  index; TYPE_1__* dev; int /*<<< orphan*/  n_comp; int /*<<< orphan*/  pbl; int /*<<< orphan*/ * hw_cons_ptr; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_3__ {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGU_INT_DISABLE ; 
 int /*<<< orphan*/  IGU_INT_ENABLE ; 
 scalar_t__ QLNXR_CQ_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(void *handle)
{
        struct qlnxr_cnq *cnq = handle;
        struct qlnxr_cq *cq;
        struct regpair *cq_handle;
        u16 hw_comp_cons, sw_comp_cons;
	qlnx_host_t *ha;

	ha = cnq->dev->ha;

	FUNC2(ha, "enter cnq = %p\n", handle);

        FUNC6(cnq->sb, IGU_INT_DISABLE, 0 /*do not update*/);

        FUNC7(cnq->sb);

        hw_comp_cons = FUNC8(*cnq->hw_cons_ptr);
        sw_comp_cons = FUNC4(&cnq->pbl);

        FUNC9();

	FUNC2(ha, "enter cnq = %p hw_comp_cons = 0x%x sw_comp_cons = 0x%x\n",
		handle, hw_comp_cons, sw_comp_cons);

        while (sw_comp_cons != hw_comp_cons) {
                cq_handle = (struct regpair *)FUNC3(&cnq->pbl);
                cq = (struct qlnxr_cq *)(uintptr_t)FUNC0(cq_handle->hi,
                                cq_handle->lo);

                if (cq == NULL) {
			FUNC1(ha, "cq == NULL\n");
                        break;
                }

                if (cq->sig != QLNXR_CQ_MAGIC_NUMBER) {
			FUNC1(ha,
				"cq->sig = 0x%x QLNXR_CQ_MAGIC_NUMBER = 0x%x\n",
				cq->sig, QLNXR_CQ_MAGIC_NUMBER);
                        break;
                }
                cq->arm_flags = 0;

                if (!cq->destroyed && cq->ibcq.comp_handler) {
			FUNC1(ha, "calling comp_handler = %p "
				"ibcq = %p cq_context = 0x%x\n",
				&cq->ibcq, cq->ibcq.cq_context);

                        (*cq->ibcq.comp_handler) (&cq->ibcq, cq->ibcq.cq_context);
                }
		cq->cnq_notif++;

                sw_comp_cons = FUNC4(&cnq->pbl);

                cnq->n_comp++;
        }

        FUNC5(cnq->dev->rdma_ctx, cnq->index, sw_comp_cons);

        FUNC6(cnq->sb, IGU_INT_ENABLE, 1 /*update*/);

	FUNC2(ha, "exit cnq = %p\n", handle);
        return;
}