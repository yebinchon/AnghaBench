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
struct TYPE_2__ {int /*<<< orphan*/  sge_rx_ring; } ;
struct sge_chain_data {int /*<<< orphan*/  sge_rx_dmamap; int /*<<< orphan*/  sge_rx_tag; scalar_t__ sge_rx_cons; } ;
struct sge_softc {TYPE_1__ sge_ldata; struct sge_chain_data sge_cdata; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct sge_softc*) ; 
 int SGE_RX_RING_CNT ; 
 int /*<<< orphan*/  SGE_RX_RING_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sge_softc*,int) ; 

__attribute__((used)) static int
FUNC4(struct sge_softc *sc)
{
	struct sge_chain_data *cd;
	int i;

	FUNC0(sc);
	cd = &sc->sge_cdata;
	cd->sge_rx_cons = 0;
	FUNC2(sc->sge_ldata.sge_rx_ring, SGE_RX_RING_SZ);
	for (i = 0; i < SGE_RX_RING_CNT; i++) {
		if (FUNC3(sc, i) != 0)
			return (ENOBUFS);
	}
	FUNC1(cd->sge_rx_tag, cd->sge_rx_dmamap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	return (0);
}