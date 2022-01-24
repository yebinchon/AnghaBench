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
struct tsec_softc {int /*<<< orphan*/  tsec_rx_vaddr; int /*<<< orphan*/  tsec_rx_dmap; int /*<<< orphan*/  tsec_rx_dtag; int /*<<< orphan*/  tsec_tx_vaddr; int /*<<< orphan*/  tsec_tx_dmap; int /*<<< orphan*/  tsec_tx_dtag; int /*<<< orphan*/  tsec_rx_mtag; TYPE_2__* rx_data; int /*<<< orphan*/  tsec_tx_mtag; TYPE_1__* tx_bufmap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * map; scalar_t__ mbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/ * map; scalar_t__ map_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int TSEC_RX_NUM_DESC ; 
 int TSEC_TX_NUM_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct tsec_softc *sc)
{
	int i;

	/* Free TX maps */
	for (i = 0; i < TSEC_TX_NUM_DESC; i++)
		if (sc->tx_bufmap[i].map_initialized)
			FUNC1(sc->tsec_tx_mtag,
			    sc->tx_bufmap[i].map);
	/* Destroy tag for TX mbufs */
	FUNC0(sc->tsec_tx_mtag);

	/* Free RX mbufs and maps */
	for (i = 0; i < TSEC_RX_NUM_DESC; i++) {
		if (sc->rx_data[i].mbuf) {
			/* Unload buffer from DMA */
			FUNC2(sc->tsec_rx_mtag, sc->rx_data[i].map,
			    BUS_DMASYNC_POSTREAD);
			FUNC3(sc->tsec_rx_mtag,
			    sc->rx_data[i].map);

			/* Free buffer */
			FUNC4(sc->rx_data[i].mbuf);
		}
		/* Destroy map for this buffer */
		if (sc->rx_data[i].map != NULL)
			FUNC1(sc->tsec_rx_mtag,
			    sc->rx_data[i].map);
	}
	/* Destroy tag for RX mbufs */
	FUNC0(sc->tsec_rx_mtag);

	/* Unload TX/RX descriptors */
	FUNC5(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
	    sc->tsec_tx_vaddr);
	FUNC5(sc->tsec_rx_dtag, sc->tsec_rx_dmap,
	    sc->tsec_rx_vaddr);
}