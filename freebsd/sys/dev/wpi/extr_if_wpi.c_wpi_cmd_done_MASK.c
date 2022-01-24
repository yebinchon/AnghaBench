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
struct TYPE_2__ {int /*<<< orphan*/  map; } ;
struct wpi_tx_ring {scalar_t__ queued; TYPE_1__ cmd_dma; int /*<<< orphan*/  data_dmat; struct wpi_tx_cmd* cmd; struct wpi_tx_data* data; } ;
struct wpi_tx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct wpi_tx_cmd {scalar_t__ data; } ;
struct wpi_softc {int /*<<< orphan*/  sc_update_tx_ring; int /*<<< orphan*/  sc_update_rx_ring; struct wpi_tx_ring* txq; } ;
struct wpi_rx_desc {size_t qid; size_t idx; scalar_t__ type; int /*<<< orphan*/  len; int /*<<< orphan*/  flags; } ;
struct wpi_pmgt_cmd {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct wpi_softc*,int /*<<< orphan*/ ,char*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 size_t WPI_CMD_QUEUE_NUM ; 
 scalar_t__ WPI_CMD_SET_POWER_MODE ; 
 int /*<<< orphan*/  WPI_DEBUG_CMD ; 
 int WPI_PS_ALLOW_SLEEP ; 
 size_t WPI_RX_DESC_QID_MSK ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wpi_tx_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  wpi_update_rx_ring ; 
 int /*<<< orphan*/  wpi_update_rx_ring_ps ; 
 int /*<<< orphan*/  wpi_update_tx_ring ; 
 int /*<<< orphan*/  wpi_update_tx_ring_ps ; 

__attribute__((used)) static void
FUNC11(struct wpi_softc *sc, struct wpi_rx_desc *desc)
{
	struct wpi_tx_ring *ring = &sc->txq[WPI_CMD_QUEUE_NUM];
	struct wpi_tx_data *data;
	struct wpi_tx_cmd *cmd;

	FUNC0(sc, WPI_DEBUG_CMD, "cmd notification qid %x idx %d flags %x "
				   "type %s len %d\n", desc->qid, desc->idx,
				   desc->flags, FUNC10(desc->type),
				   FUNC7(desc->len));

	if ((desc->qid & WPI_RX_DESC_QID_MSK) != WPI_CMD_QUEUE_NUM)
		return;	/* Not a command ack. */

	FUNC1(ring->queued == 0, ("ring->queued must be 0"));

	data = &ring->data[desc->idx];
	cmd = &ring->cmd[desc->idx];

	/* If the command was mapped in an mbuf, free it. */
	if (data->m != NULL) {
		FUNC4(ring->data_dmat, data->map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC5(ring->data_dmat, data->map);
		FUNC8(data->m);
		data->m = NULL;
	}

	FUNC9(cmd);

	if (desc->type == WPI_CMD_SET_POWER_MODE) {
		struct wpi_pmgt_cmd *pcmd = (struct wpi_pmgt_cmd *)cmd->data;

		FUNC4(ring->data_dmat, ring->cmd_dma.map,
		    BUS_DMASYNC_POSTREAD);

		FUNC2(sc);
		if (FUNC6(pcmd->flags) & WPI_PS_ALLOW_SLEEP) {
			sc->sc_update_rx_ring = wpi_update_rx_ring_ps;
			sc->sc_update_tx_ring = wpi_update_tx_ring_ps;
		} else {
			sc->sc_update_rx_ring = wpi_update_rx_ring;
			sc->sc_update_tx_ring = wpi_update_tx_ring;
		}
		FUNC3(sc);
	}
}