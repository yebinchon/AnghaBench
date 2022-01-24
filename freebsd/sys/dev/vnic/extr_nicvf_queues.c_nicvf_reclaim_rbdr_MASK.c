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
struct rbdr {int head; int tail; } ;
struct nicvf {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NICVF_RBDR_RESET ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_CFG ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_HEAD ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_PREFETCH_STATUS ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_STATUS0 ; 
 int /*<<< orphan*/  NIC_QSET_RBDR_0_1_TAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct nicvf*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nicvf *nic, struct rbdr *rbdr, int qidx)
{
	uint64_t tmp, fifo_state;
	int timeout = 10;

	/* Save head and tail pointers for feeing up buffers */
	rbdr->head =
	    FUNC3(nic, NIC_QSET_RBDR_0_1_HEAD, qidx) >> 3;
	rbdr->tail =
	    FUNC3(nic, NIC_QSET_RBDR_0_1_TAIL, qidx) >> 3;

	/*
	 * If RBDR FIFO is in 'FAIL' state then do a reset first
	 * before relaiming.
	 */
	fifo_state = FUNC3(nic, NIC_QSET_RBDR_0_1_STATUS0, qidx);
	if (((fifo_state >> 62) & 0x03) == 0x3) {
		FUNC4(nic, NIC_QSET_RBDR_0_1_CFG,
		    qidx, NICVF_RBDR_RESET);
	}

	/* Disable RBDR */
	FUNC4(nic, NIC_QSET_RBDR_0_1_CFG, qidx, 0);
	if (FUNC2(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x00))
		return;
	while (1) {
		tmp = FUNC3(nic,
		    NIC_QSET_RBDR_0_1_PREFETCH_STATUS, qidx);
		if ((tmp & 0xFFFFFFFF) == ((tmp >> 32) & 0xFFFFFFFF))
			break;

		FUNC0(1000);
		timeout--;
		if (!timeout) {
			FUNC1(nic->dev,
			    "Failed polling on prefetch status\n");
			return;
		}
	}
	FUNC4(nic, NIC_QSET_RBDR_0_1_CFG, qidx,
	    NICVF_RBDR_RESET);

	if (FUNC2(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x02))
		return;
	FUNC4(nic, NIC_QSET_RBDR_0_1_CFG, qidx, 0x00);
	if (FUNC2(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x00))
		return;
}