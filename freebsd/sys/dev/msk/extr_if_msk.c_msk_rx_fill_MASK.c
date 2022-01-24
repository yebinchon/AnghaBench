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
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ msk_rx_prod; int /*<<< orphan*/  msk_rx_ring_map; int /*<<< orphan*/  msk_rx_ring_tag; int /*<<< orphan*/  msk_jumbo_rx_ring_map; int /*<<< orphan*/  msk_jumbo_rx_ring_tag; } ;
struct msk_if_softc {int msk_flags; TYPE_2__ msk_cdata; int /*<<< orphan*/  msk_rxq; int /*<<< orphan*/  msk_softc; int /*<<< orphan*/  msk_if_dev; TYPE_1__* msk_ifp; } ;
struct TYPE_3__ {int if_capenable; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENOBUFS ; 
 int ETIMEDOUT ; 
 int IFCAP_RXCSUM ; 
 int MSK_FLAG_DESCV2 ; 
 int /*<<< orphan*/  PREF_UNIT_GET_IDX_REG ; 
 int /*<<< orphan*/  PREF_UNIT_PUT_IDX_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct msk_if_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct msk_if_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct msk_if_softc *sc_if, int jumbo)
{
	uint16_t idx;
	int i;

	if ((sc_if->msk_flags & MSK_FLAG_DESCV2) == 0 &&
	    (sc_if->msk_ifp->if_capenable & IFCAP_RXCSUM) != 0) {
		/* Wait until controller executes OP_TCPSTART command. */
		for (i = 100; i > 0; i--) {
			FUNC2(100);
			idx = FUNC0(sc_if->msk_softc,
			    FUNC3(sc_if->msk_rxq,
			    PREF_UNIT_GET_IDX_REG));
			if (idx != 0)
				break;
		}
		if (i == 0) {
			FUNC5(sc_if->msk_if_dev,
			    "prefetch unit stuck?\n");
			return (ETIMEDOUT);
		}
		/*
		 * Fill consumed LE with free buffer. This can be done
		 * in Rx handler but we don't want to add special code
		 * in fast handler.
		 */
		if (jumbo > 0) {
			if (FUNC6(sc_if, 0) != 0)
				return (ENOBUFS);
			FUNC4(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
			    sc_if->msk_cdata.msk_jumbo_rx_ring_map,
			    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		} else {
			if (FUNC7(sc_if, 0) != 0)
				return (ENOBUFS);
			FUNC4(sc_if->msk_cdata.msk_rx_ring_tag,
			    sc_if->msk_cdata.msk_rx_ring_map,
			    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		}
		sc_if->msk_cdata.msk_rx_prod = 0;
		FUNC1(sc_if->msk_softc,
		    FUNC3(sc_if->msk_rxq, PREF_UNIT_PUT_IDX_REG),
		    sc_if->msk_cdata.msk_rx_prod);
	}
	return (0);
}