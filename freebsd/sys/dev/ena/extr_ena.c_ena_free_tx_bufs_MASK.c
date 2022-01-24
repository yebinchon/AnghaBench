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
struct ena_tx_buffer {int head_mapped; int seg_mapped; int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map_seg; int /*<<< orphan*/  map_head; } ;
struct ena_ring {int ring_size; struct ena_tx_buffer* tx_buffer_info; } ;
struct ena_adapter {int /*<<< orphan*/  tx_buf_tag; int /*<<< orphan*/  pdev; struct ena_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  ENA_DBG ; 
 int /*<<< orphan*/  FUNC0 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ena_adapter *adapter, unsigned int qid)
{
	bool print_once = true;
	struct ena_ring *tx_ring = &adapter->tx_ring[qid];

	FUNC0(tx_ring);
	for (int i = 0; i < tx_ring->ring_size; i++) {
		struct ena_tx_buffer *tx_info = &tx_ring->tx_buffer_info[i];

		if (tx_info->mbuf == NULL)
			continue;

		if (print_once) {
			FUNC4(adapter->pdev,
			    "free uncompleted tx mbuf qid %d idx 0x%x\n",
			    qid, i);
			print_once = false;
		} else {
			FUNC5(ENA_DBG,
			    "free uncompleted tx mbuf qid %d idx 0x%x\n",
			     qid, i);
		}

		if (tx_info->head_mapped == true) {
			FUNC2(adapter->tx_buf_tag, tx_info->map_head,
			    BUS_DMASYNC_POSTWRITE);
			FUNC3(adapter->tx_buf_tag,
			    tx_info->map_head);
			tx_info->head_mapped = false;
		}

		if (tx_info->seg_mapped == true) {
			FUNC2(adapter->tx_buf_tag, tx_info->map_seg,
			    BUS_DMASYNC_POSTWRITE);
			FUNC3(adapter->tx_buf_tag,
			    tx_info->map_seg);
			tx_info->seg_mapped = false;
		}

		FUNC6(tx_info->mbuf);
		tx_info->mbuf = NULL;
	}
	FUNC1(tx_ring);
}