#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_18__ {TYPE_1__* sds_ring; } ;
struct TYPE_21__ {int num_sds_rings; int* mac_addr; TYPE_4__* rx_cntxt_rsp; scalar_t__ rxj_next; scalar_t__ rx_next; scalar_t__ rxj_in; scalar_t__ rx_in; TYPE_2__ dma_buf; } ;
struct TYPE_22__ {TYPE_5__ hw; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_6__ qla_host_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_19__ {int /*<<< orphan*/  cntxt_id; } ;
struct TYPE_20__ {TYPE_3__ rx_rsp; } ;
struct TYPE_17__ {int /*<<< orphan*/  size; int /*<<< orphan*/  dma_b; } ;

/* Variables and functions */
 scalar_t__ NUM_RX_DESCRIPTORS ; 
 scalar_t__ NUM_RX_JUMBO_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 

int
FUNC10(qla_host_t *ha)
{
	device_t	dev;
	int		i;
	uint8_t		bcast_mac[6];

	FUNC7(ha);

	dev = ha->pci_dev;

	for (i = 0; i < ha->hw.num_sds_rings; i++) {
		FUNC2(ha->hw.dma_buf.sds_ring[i].dma_b,
			ha->hw.dma_buf.sds_ring[i].size);
	}
	/*
	 * Create Receive Context
	 */
	if (FUNC8(ha)) {
		return (-1);
	}

	ha->hw.rx_next = NUM_RX_DESCRIPTORS - 2;
	ha->hw.rxj_next = NUM_RX_JUMBO_DESCRIPTORS - 2;
	ha->hw.rx_in = ha->hw.rxj_in = 0;

	/* Update the RDS Producer Indices */
	FUNC1(ha, 0, ha->hw.rx_next);
	FUNC1(ha, 1, ha->hw.rxj_next);

	/*
	 * Create Transmit Context
	 */
	if (FUNC9(ha)) {
		FUNC6(ha);
		return (-1);
	}

	FUNC4(ha, ha->hw.mac_addr,
		(ha->hw.rx_cntxt_rsp)->rx_rsp.cntxt_id, 1);

	bcast_mac[0] = 0xFF; bcast_mac[1] = 0xFF; bcast_mac[2] = 0xFF;
	bcast_mac[3] = 0xFF; bcast_mac[4] = 0xFF; bcast_mac[5] = 0xFF;
	FUNC4(ha, bcast_mac,
		(ha->hw.rx_cntxt_rsp)->rx_rsp.cntxt_id, 1);

	FUNC5(ha, (ha->hw.rx_cntxt_rsp)->rx_rsp.cntxt_id);

	FUNC3(ha, (ha->hw.rx_cntxt_rsp)->rx_rsp.cntxt_id, 0);

	for (i = 0; i < ha->hw.num_sds_rings; i++)
		FUNC0(ha, i);

	return (0);
}