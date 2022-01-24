#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct qlnxr_qp {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  sq; } ;
struct qlnxr_dev {TYPE_3__* ha; struct qlnxr_qp* gsi_qp; struct qlnxr_cq* gsi_sqcq; } ;
struct TYPE_5__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct qlnxr_cq {TYPE_2__ ibcq; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  baddr; int /*<<< orphan*/  vaddr; } ;
struct ecore_roce_ll2_packet {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_roce_ll2_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC7(void *cxt,
		uint8_t connection_handle,
		void *cookie,
		dma_addr_t first_frag_addr,
		bool b_last_fragment,
		bool b_last_packet)
{
	struct qlnxr_dev *dev = (struct qlnxr_dev *)cxt;
	struct ecore_roce_ll2_packet *pkt = cookie;
	struct qlnxr_cq *cq = dev->gsi_sqcq;
	struct qlnxr_qp *qp = dev->gsi_qp;
	unsigned long flags;

	FUNC0(dev->ha, "enter\n");

	FUNC2(&dev->ha->cdev, pkt->header.vaddr,
			pkt->header.baddr, pkt->header.len);
	FUNC1(pkt);

	FUNC4(&qp->q_lock, flags);

	FUNC3(&qp->sq);

	FUNC5(&qp->q_lock, flags);

	if (cq->ibcq.comp_handler)
		(*cq->ibcq.comp_handler) (&cq->ibcq, cq->ibcq.cq_context);

	FUNC0(dev->ha, "exit\n");

	return;
}