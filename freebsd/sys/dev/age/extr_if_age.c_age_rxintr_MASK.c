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
struct rx_rdesc {scalar_t__ index; scalar_t__ len; } ;
struct TYPE_4__ {int age_rr_cons; int age_rx_cons; int /*<<< orphan*/  age_rr_ring_map; int /*<<< orphan*/  age_rr_ring_tag; int /*<<< orphan*/  age_rx_ring_map; int /*<<< orphan*/  age_rx_ring_tag; } ;
struct TYPE_3__ {struct rx_rdesc* age_rr_ring; } ;
struct age_softc {TYPE_2__ age_cdata; TYPE_1__ age_rdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_RR_RING_CNT ; 
 int /*<<< orphan*/  AGE_RX_BUF_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int AGE_RX_RING_CNT ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC5 (struct age_softc*,struct rx_rdesc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct age_softc *sc, int rr_prod, int count)
{
	struct rx_rdesc *rxrd;
	int rr_cons, nsegs, pktlen, prog;

	FUNC2(sc);

	rr_cons = sc->age_cdata.age_rr_cons;
	if (rr_cons == rr_prod)
		return (0);

	FUNC6(sc->age_cdata.age_rr_ring_tag,
	    sc->age_cdata.age_rr_ring_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC6(sc->age_cdata.age_rx_ring_tag,
	    sc->age_cdata.age_rx_ring_map, BUS_DMASYNC_POSTWRITE);

	for (prog = 0; rr_cons != rr_prod; prog++) {
		if (count-- <= 0)
			break;
		rxrd = &sc->age_rdata.age_rr_ring[rr_cons];
		nsegs = FUNC4(FUNC8(rxrd->index));
		if (nsegs == 0)
			break;
		/*
		 * Check number of segments against received bytes.
		 * Non-matching value would indicate that hardware
		 * is still trying to update Rx return descriptors.
		 * I'm not sure whether this check is really needed.
		 */
		pktlen = FUNC3(FUNC8(rxrd->len));
		if (nsegs != FUNC7(pktlen, AGE_RX_BUF_SIZE))
			break;

		/* Received a frame. */
		FUNC5(sc, rxrd);
		/* Clear return ring. */
		rxrd->index = 0;
		FUNC1(rr_cons, AGE_RR_RING_CNT);
		sc->age_cdata.age_rx_cons += nsegs;
		sc->age_cdata.age_rx_cons %= AGE_RX_RING_CNT;
	}

	if (prog > 0) {
		/* Update the consumer index. */
		sc->age_cdata.age_rr_cons = rr_cons;

		FUNC6(sc->age_cdata.age_rx_ring_tag,
		    sc->age_cdata.age_rx_ring_map, BUS_DMASYNC_PREWRITE);
		/* Sync descriptors. */
		FUNC6(sc->age_cdata.age_rr_ring_tag,
		    sc->age_cdata.age_rr_ring_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

		/* Notify hardware availability of new Rx buffers. */
		FUNC0(sc);
	}

	return (count > 0 ? 0 : EAGAIN);
}