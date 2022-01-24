#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/ * m_head; int /*<<< orphan*/  map; } ;
typedef  TYPE_2__ qla_tx_buf_t ;
struct TYPE_9__ {int qla_initiate_recovery; TYPE_1__* tx_ring; int /*<<< orphan*/  tx_tag; int /*<<< orphan*/  ifp; } ;
typedef  TYPE_3__ qla_host_t ;
struct TYPE_10__ {size_t tid_lo; } ;
typedef  TYPE_4__ q81_tx_mac_comp_t ;
struct TYPE_7__ {size_t txr_done; TYPE_2__* tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 size_t NUM_TX_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(qla_host_t *ha, uint32_t txr_idx, q81_tx_mac_comp_t *tx_comp)
{
	qla_tx_buf_t *txb;
	uint32_t tx_idx = tx_comp->tid_lo;

	if (tx_idx >= NUM_TX_DESCRIPTORS) {
		ha->qla_initiate_recovery = 1;
		return;
	}

	txb = &ha->tx_ring[txr_idx].tx_buf[tx_idx];

	if (txb->m_head) {
		FUNC2(ha->ifp, IFCOUNTER_OPACKETS, 1);
		FUNC0(ha->tx_tag, txb->map,
		        BUS_DMASYNC_POSTWRITE);
		FUNC1(ha->tx_tag, txb->map);
		FUNC3(txb->m_head);

		txb->m_head = NULL;
	}

        ha->tx_ring[txr_idx].txr_done++;

	if (ha->tx_ring[txr_idx].txr_done == NUM_TX_DESCRIPTORS)
		ha->tx_ring[txr_idx].txr_done = 0;
}