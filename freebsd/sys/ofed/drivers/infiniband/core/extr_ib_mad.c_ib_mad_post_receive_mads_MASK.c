#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ib_sge {int /*<<< orphan*/  addr; int /*<<< orphan*/  length; int /*<<< orphan*/  lkey; } ;
struct ib_recv_wr {int num_sge; TYPE_2__* wr_cqe; struct ib_sge* sg_list; int /*<<< orphan*/ * next; } ;
struct ib_mad_queue {scalar_t__ count; scalar_t__ max_active; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct ib_mad_qp_info {TYPE_5__* port_priv; int /*<<< orphan*/  qp; struct ib_mad_queue recv_queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  done; } ;
struct TYPE_11__ {int /*<<< orphan*/  list; TYPE_2__ cqe; struct ib_mad_queue* mad_queue; } ;
struct TYPE_12__ {int /*<<< orphan*/  mapping; TYPE_3__ mad_list; } ;
struct ib_mad_private {TYPE_4__ header; int /*<<< orphan*/  grh; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {TYPE_6__* device; TYPE_1__* pd; } ;
struct TYPE_9__ {int /*<<< orphan*/  local_dma_lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ib_mad_private* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_mad_recv_done ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ib_recv_wr*,struct ib_recv_wr**) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_mad_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_private*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ib_mad_qp_info *qp_info,
				    struct ib_mad_private *mad)
{
	unsigned long flags;
	int post, ret;
	struct ib_mad_private *mad_priv;
	struct ib_sge sg_list;
	struct ib_recv_wr recv_wr, *bad_recv_wr;
	struct ib_mad_queue *recv_queue = &qp_info->recv_queue;

	/* Initialize common scatter list fields */
	sg_list.lkey = qp_info->port_priv->pd->local_dma_lkey;

	/* Initialize common receive WR fields */
	recv_wr.next = NULL;
	recv_wr.sg_list = &sg_list;
	recv_wr.num_sge = 1;

	do {
		/* Allocate and map receive buffer */
		if (mad) {
			mad_priv = mad;
			mad = NULL;
		} else {
			mad_priv = FUNC0(FUNC10(qp_info->port_priv),
						     GFP_ATOMIC);
			if (!mad_priv) {
				FUNC1(&qp_info->port_priv->device->dev,
					"No memory for receive buffer\n");
				ret = -ENOMEM;
				break;
			}
		}
		sg_list.length = FUNC9(mad_priv);
		sg_list.addr = FUNC2(qp_info->port_priv->device,
						 &mad_priv->grh,
						 FUNC9(mad_priv),
						 DMA_FROM_DEVICE);
		if (FUNC13(FUNC3(qp_info->port_priv->device,
						  sg_list.addr))) {
			ret = -ENOMEM;
			break;
		}
		mad_priv->header.mapping = sg_list.addr;
		mad_priv->header.mad_list.mad_queue = recv_queue;
		mad_priv->header.mad_list.cqe.done = ib_mad_recv_done;
		recv_wr.wr_cqe = &mad_priv->header.mad_list.cqe;

		/* Post receive WR */
		FUNC11(&recv_queue->lock, flags);
		post = (++recv_queue->count < recv_queue->max_active);
		FUNC7(&mad_priv->header.mad_list.list, &recv_queue->list);
		FUNC12(&recv_queue->lock, flags);
		ret = FUNC5(qp_info->qp, &recv_wr, &bad_recv_wr);
		if (ret) {
			FUNC11(&recv_queue->lock, flags);
			FUNC8(&mad_priv->header.mad_list.list);
			recv_queue->count--;
			FUNC12(&recv_queue->lock, flags);
			FUNC4(qp_info->port_priv->device,
					    mad_priv->header.mapping,
					    FUNC9(mad_priv),
					    DMA_FROM_DEVICE);
			FUNC6(mad_priv);
			FUNC1(&qp_info->port_priv->device->dev,
				"ib_post_recv failed: %d\n", ret);
			break;
		}
	} while (post);

	return ret;
}