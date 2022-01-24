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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  last_tail; } ;
struct mgb_softc {TYPE_1__ rx_ring_data; } ;
typedef  int /*<<< orphan*/  qidx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void *xsc, uint16_t rxqid, uint8_t flid, qidx_t pidx)
{
	struct mgb_softc *sc;

	sc = xsc;

	FUNC1(rxqid == 0, ("tried to flush RX Channel %d.\n", rxqid));
	sc->rx_ring_data.last_tail = pidx;
	FUNC0(sc, FUNC2(rxqid), sc->rx_ring_data.last_tail);
	return;
}