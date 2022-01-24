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
typedef  scalar_t__ uint8_t ;
typedef  size_t uint16_t ;
struct bnxt_softc {TYPE_1__* rx_cp_rings; struct bnxt_ring* ag_rings; struct bnxt_ring* rx_rings; } ;
struct bnxt_ring {int dummy; } ;
typedef  int /*<<< orphan*/  qidx_t ;
struct TYPE_2__ {scalar_t__ cons; int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_ring*,int /*<<< orphan*/ ) ; 
 scalar_t__ UINT32_MAX ; 

__attribute__((used)) static void
FUNC3(void *sc, uint16_t rxqid, uint8_t flid,
    qidx_t pidx)
{
	struct bnxt_softc *softc = (struct bnxt_softc *)sc;
	struct bnxt_ring *rx_ring;

	if (flid == 0)
		rx_ring = &softc->rx_rings[rxqid];
	else
		rx_ring = &softc->ag_rings[rxqid];

	/*
	 * We *must* update the completion ring before updating the RX ring
	 * or we will overrun the completion ring and the device will wedge for
	 * RX.
	 */
	if (softc->rx_cp_rings[rxqid].cons != UINT32_MAX)
		FUNC0(&softc->rx_cp_rings[rxqid].ring,
		    softc->rx_cp_rings[rxqid].cons);
	/* We're given the last filled RX buffer here, not the next empty one */
	FUNC1(rx_ring, FUNC2(rx_ring, pidx));
	/* TODO: Cumulus+ doesn't need the double doorbell */
	FUNC1(rx_ring, FUNC2(rx_ring, pidx));
	return;
}