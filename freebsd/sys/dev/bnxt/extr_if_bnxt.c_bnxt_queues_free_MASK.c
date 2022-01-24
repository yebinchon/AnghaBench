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
struct bnxt_softc {int /*<<< orphan*/ * rx_cp_rings; int /*<<< orphan*/ * rx_rings; int /*<<< orphan*/ * ag_rings; int /*<<< orphan*/ * grp_info; int /*<<< orphan*/  hw_rx_port_stats; int /*<<< orphan*/  hw_tx_port_stats; int /*<<< orphan*/  rx_stats; scalar_t__ ntxqsets; int /*<<< orphan*/ * tx_cp_rings; int /*<<< orphan*/ * tx_rings; int /*<<< orphan*/  tx_stats; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bnxt_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC2(ctx);

	// Free TX queues
	FUNC1(&softc->tx_stats);
	FUNC0(softc->tx_rings, M_DEVBUF);
	softc->tx_rings = NULL;
	FUNC0(softc->tx_cp_rings, M_DEVBUF);
	softc->tx_cp_rings = NULL;
	softc->ntxqsets = 0;

	// Free RX queues
	FUNC1(&softc->rx_stats);
	FUNC1(&softc->hw_tx_port_stats);
	FUNC1(&softc->hw_rx_port_stats);
	FUNC0(softc->grp_info, M_DEVBUF);
	FUNC0(softc->ag_rings, M_DEVBUF);
	FUNC0(softc->rx_rings, M_DEVBUF);
	FUNC0(softc->rx_cp_rings, M_DEVBUF);
}