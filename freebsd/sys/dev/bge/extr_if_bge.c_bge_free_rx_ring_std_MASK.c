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
struct TYPE_4__ {int /*<<< orphan*/ * bge_rx_std_ring; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** bge_rx_std_chain; int /*<<< orphan*/ * bge_rx_std_dmamap; int /*<<< orphan*/  bge_rx_mtag; } ;
struct bge_softc {TYPE_2__ bge_ldata; TYPE_1__ bge_cdata; } ;
struct bge_rx_bd {int dummy; } ;

/* Variables and functions */
 int BGE_STD_RX_RING_CNT ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bge_softc *sc)
{
	int i;

	for (i = 0; i < BGE_STD_RX_RING_CNT; i++) {
		if (sc->bge_cdata.bge_rx_std_chain[i] != NULL) {
			FUNC0(sc->bge_cdata.bge_rx_mtag,
			    sc->bge_cdata.bge_rx_std_dmamap[i],
			    BUS_DMASYNC_POSTREAD);
			FUNC1(sc->bge_cdata.bge_rx_mtag,
			    sc->bge_cdata.bge_rx_std_dmamap[i]);
			FUNC3(sc->bge_cdata.bge_rx_std_chain[i]);
			sc->bge_cdata.bge_rx_std_chain[i] = NULL;
		}
		FUNC2((char *)&sc->bge_ldata.bge_rx_std_ring[i],
		    sizeof(struct bge_rx_bd));
	}
}