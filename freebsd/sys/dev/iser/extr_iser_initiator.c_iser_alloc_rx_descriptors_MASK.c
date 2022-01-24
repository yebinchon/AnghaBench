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
typedef  int /*<<< orphan*/  u64 ;
struct ib_sge {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct iser_rx_desc {int /*<<< orphan*/  dma_addr; struct ib_sge rx_sg; } ;
struct iser_device {int /*<<< orphan*/  ib_device; TYPE_1__* mr; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {int qp_max_recv_dtos; int min_posted_rx; int num_rx_descs; struct iser_rx_desc* rx_descs; scalar_t__ rx_desc_head; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  M_ISER_INITIATOR ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct iser_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ib_conn*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_conn*) ; 
 struct iser_rx_desc* FUNC7 (int,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct iser_conn *iser_conn, int cmds_max)
{
	int i, j;
	u64 dma_addr;
	struct iser_rx_desc *rx_desc;
	struct ib_sge       *rx_sg;
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	struct iser_device *device = ib_conn->device;

	iser_conn->qp_max_recv_dtos = cmds_max;
	iser_conn->min_posted_rx = iser_conn->qp_max_recv_dtos >> 2;

	if (FUNC5(ib_conn, cmds_max))
		goto create_rdma_reg_res_failed;


	iser_conn->num_rx_descs = cmds_max;
	iser_conn->rx_descs = FUNC7(iser_conn->num_rx_descs *
				sizeof(struct iser_rx_desc), M_ISER_INITIATOR,
				M_WAITOK | M_ZERO);
	if (!iser_conn->rx_descs)
		goto rx_desc_alloc_fail;

	rx_desc = iser_conn->rx_descs;

	for (i = 0; i < iser_conn->qp_max_recv_dtos; i++, rx_desc++)  {
		dma_addr = FUNC2(device->ib_device, (void *)rx_desc,
					ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
		if (FUNC3(device->ib_device, dma_addr))
			goto rx_desc_dma_map_failed;

		rx_desc->dma_addr = dma_addr;

		rx_sg = &rx_desc->rx_sg;
		rx_sg->addr   = rx_desc->dma_addr;
		rx_sg->length = ISER_RX_PAYLOAD_SIZE;
		rx_sg->lkey   = device->mr->lkey;
	}

	iser_conn->rx_desc_head = 0;

	return (0);

rx_desc_dma_map_failed:
	rx_desc = iser_conn->rx_descs;
	for (j = 0; j < i; j++, rx_desc++)
		FUNC4(device->ib_device, rx_desc->dma_addr,
				    ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
	FUNC1(iser_conn->rx_descs, M_ISER_INITIATOR);
	iser_conn->rx_descs = NULL;
rx_desc_alloc_fail:
	FUNC6(ib_conn);
create_rdma_reg_res_failed:
	FUNC0("failed allocating rx descriptors / data buffers");

	return (ENOMEM);
}