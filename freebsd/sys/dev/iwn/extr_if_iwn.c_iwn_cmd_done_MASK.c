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
struct iwn_tx_ring {int /*<<< orphan*/ * desc; int /*<<< orphan*/  data_dmat; struct iwn_tx_data* data; } ;
struct iwn_tx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct iwn_softc {int sc_flags; struct iwn_tx_ring* txq; } ;
struct iwn_rx_desc {int qid; size_t idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int IWN_CMD_QUEUE_NUM ; 
 int IWN_FLAG_PAN_SUPPORT ; 
 int IWN_PAN_CMD_QUEUE ; 
 int IWN_RX_DESC_QID_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct iwn_softc *sc, struct iwn_rx_desc *desc)
{
	struct iwn_tx_ring *ring;
	struct iwn_tx_data *data;
	int cmd_queue_num;

	if (sc->sc_flags & IWN_FLAG_PAN_SUPPORT)
		cmd_queue_num = IWN_PAN_CMD_QUEUE;
	else
		cmd_queue_num = IWN_CMD_QUEUE_NUM;

	if ((desc->qid & IWN_RX_DESC_QID_MSK) != cmd_queue_num)
		return;	/* Not a command ack. */

	ring = &sc->txq[cmd_queue_num];
	data = &ring->data[desc->idx];

	/* If the command was mapped in an mbuf, free it. */
	if (data->m != NULL) {
		FUNC0(ring->data_dmat, data->map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC1(ring->data_dmat, data->map);
		FUNC2(data->m);
		data->m = NULL;
	}
	FUNC3(&ring->desc[desc->idx]);
}