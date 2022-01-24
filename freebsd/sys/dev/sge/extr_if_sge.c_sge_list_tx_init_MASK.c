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
struct sge_chain_data {scalar_t__ sge_tx_cnt; scalar_t__ sge_tx_cons; scalar_t__ sge_tx_prod; int /*<<< orphan*/  sge_tx_dmamap; int /*<<< orphan*/  sge_tx_tag; } ;
struct sge_list_data {TYPE_1__* sge_tx_ring; } ;
struct sge_softc {struct sge_chain_data sge_cdata; struct sge_list_data sge_ldata; } ;
struct TYPE_2__ {int /*<<< orphan*/  sge_flags; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  RING_END ; 
 int /*<<< orphan*/  FUNC0 (struct sge_softc*) ; 
 int SGE_TX_RING_CNT ; 
 int /*<<< orphan*/  SGE_TX_RING_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct sge_softc *sc)
{
	struct sge_list_data *ld;
	struct sge_chain_data *cd;

	FUNC0(sc);
	ld = &sc->sge_ldata;
	cd = &sc->sge_cdata;
	FUNC2(ld->sge_tx_ring, SGE_TX_RING_SZ);
	ld->sge_tx_ring[SGE_TX_RING_CNT - 1].sge_flags = FUNC3(RING_END);
	FUNC1(cd->sge_tx_tag, cd->sge_tx_dmamap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	cd->sge_tx_prod = 0;
	cd->sge_tx_cons = 0;
	cd->sge_tx_cnt = 0;
	return (0);
}