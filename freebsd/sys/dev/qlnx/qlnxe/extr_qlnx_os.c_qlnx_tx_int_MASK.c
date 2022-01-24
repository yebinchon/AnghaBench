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
typedef  int uint16_t ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
struct qlnx_tx_queue {int sw_tx_cons; TYPE_2__* sw_tx_ring; int /*<<< orphan*/  tx_pbl; TYPE_1__ tx_db; int /*<<< orphan*/ * hw_cons_ptr; } ;
struct qlnx_fastpath {int /*<<< orphan*/  err_tx_cons_idx_conflict; int /*<<< orphan*/  rss_id; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_4__ {int /*<<< orphan*/  mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QL_ERR_INJCT_TX_INT_DIFF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TX_RING_SIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct qlnx_fastpath*,struct qlnx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(qlnx_host_t *ha, struct qlnx_fastpath *fp,
	struct qlnx_tx_queue *txq)
{
	u16 hw_bd_cons;
	u16 ecore_cons_idx;
	uint16_t diff;
	uint16_t idx, idx2;

	hw_bd_cons = FUNC6(*txq->hw_cons_ptr);

	while (hw_bd_cons !=
		(ecore_cons_idx = FUNC3(&txq->tx_pbl))) {

		if (hw_bd_cons < ecore_cons_idx) {
			diff = (1 << 16) - (ecore_cons_idx - hw_bd_cons);
		} else {
			diff = hw_bd_cons - ecore_cons_idx;
		}
		if ((diff > TX_RING_SIZE) ||
			FUNC1(ha, QL_ERR_INJCT_TX_INT_DIFF)){

			FUNC2(ha, QL_ERR_INJCT_TX_INT_DIFF);

			FUNC0(ha, "(diff = 0x%x) "
				" tx_idx = 0x%x"
				" ecore_prod_idx = 0x%x"
				" ecore_cons_idx = 0x%x"
				" hw_bd_cons = 0x%x"
				" txq_db_last = 0x%x"
				" elem_left = 0x%x\n",
				diff,
				fp->rss_id,
				FUNC5(&txq->tx_pbl),
				FUNC3(&txq->tx_pbl),
				FUNC6(*txq->hw_cons_ptr),
				txq->tx_db.raw,
				FUNC4(&txq->tx_pbl));

			fp->err_tx_cons_idx_conflict++;

			//DEBUG
			FUNC9(ha);
		}

		idx = (txq->sw_tx_cons + 1) & (TX_RING_SIZE - 1);
		idx2 = (txq->sw_tx_cons + 2) & (TX_RING_SIZE - 1);
		FUNC7(txq->sw_tx_ring[idx].mp);
		FUNC7(txq->sw_tx_ring[idx2].mp);

		FUNC8(ha, fp, txq);

		txq->sw_tx_cons = (txq->sw_tx_cons + 1) & (TX_RING_SIZE - 1);
	}
	return;
}