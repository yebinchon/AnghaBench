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
struct et_rxstat_ring {int /*<<< orphan*/  rsr_dmap; int /*<<< orphan*/  rsr_dtag; int /*<<< orphan*/  rsr_stat; } ;
struct et_rxstatus_data {int /*<<< orphan*/  rxsd_dmap; int /*<<< orphan*/  rxsd_dtag; int /*<<< orphan*/  rxsd_status; } ;
struct et_softc {struct et_rxstat_ring sc_rxstat_ring; struct et_rxstatus_data sc_rx_status; int /*<<< orphan*/  ifp; struct et_rxbuf_data* sc_rx_data; } ;
struct et_rxstatus {int dummy; } ;
struct et_rxbuf_data {int (* rbd_newbuf ) (struct et_rxbuf_data*,int) ;} ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ET_RXSTAT_RING_SIZE ; 
 int ET_RX_NDESC ; 
 int ET_RX_NRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC3 (struct et_rxbuf_data*,int) ; 

__attribute__((used)) static int
FUNC4(struct et_softc *sc)
{
	struct et_rxstatus_data *rxsd;
	struct et_rxstat_ring *rxst_ring;
	struct et_rxbuf_data *rbd;
	int i, error, n;

	for (n = 0; n < ET_RX_NRING; ++n) {
		rbd = &sc->sc_rx_data[n];
		for (i = 0; i < ET_RX_NDESC; ++i) {
			error = rbd->rbd_newbuf(rbd, i);
			if (error) {
				FUNC2(sc->ifp, "%d ring %d buf, "
					  "newbuf failed: %d\n", n, i, error);
				return (error);
			}
		}
	}

	rxsd = &sc->sc_rx_status;
	FUNC1(rxsd->rxsd_status, sizeof(struct et_rxstatus));
	FUNC0(rxsd->rxsd_dtag, rxsd->rxsd_dmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	rxst_ring = &sc->sc_rxstat_ring;
	FUNC1(rxst_ring->rsr_stat, ET_RXSTAT_RING_SIZE);
	FUNC0(rxst_ring->rsr_dtag, rxst_ring->rsr_dmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (0);
}