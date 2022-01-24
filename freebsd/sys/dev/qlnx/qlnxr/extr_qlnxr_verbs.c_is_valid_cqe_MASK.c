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
struct rdma_cqe_requester {int flags; } ;
union rdma_cqe {struct rdma_cqe_requester req; } ;
struct qlnxr_cq {int pbl_toggle; } ;

/* Variables and functions */
 int RDMA_RESIZE_CQ_RAMROD_DATA_TOGGLE_BIT_MASK ; 

__attribute__((used)) static int
FUNC0(struct qlnxr_cq *cq, union rdma_cqe *cqe)
{
	struct rdma_cqe_requester *resp_cqe = &cqe->req;
	return (resp_cqe->flags & RDMA_RESIZE_CQ_RAMROD_DATA_TOGGLE_BIT_MASK) ==
			cq->pbl_toggle;
}