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
struct dc_list_data {TYPE_1__* dc_rx_list; } ;
struct dc_chain_data {scalar_t__ dc_rx_prod; } ;
struct dc_softc {int /*<<< orphan*/  dc_rx_lmap; int /*<<< orphan*/  dc_rx_ltag; struct dc_list_data dc_ldata; struct dc_chain_data dc_cdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  dc_next; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int) ; 
 int DC_RX_LIST_CNT ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct dc_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct dc_softc *sc)
{
	struct dc_chain_data *cd;
	struct dc_list_data *ld;
	int i, nexti;

	cd = &sc->dc_cdata;
	ld = &sc->dc_ldata;

	for (i = 0; i < DC_RX_LIST_CNT; i++) {
		if (FUNC2(sc, i) != 0)
			return (ENOBUFS);
		if (i == DC_RX_LIST_CNT - 1)
			nexti = 0;
		else
			nexti = i + 1;
		ld->dc_rx_list[i].dc_next = FUNC3(FUNC0(sc, nexti));
	}

	cd->dc_rx_prod = 0;
	FUNC1(sc->dc_rx_ltag, sc->dc_rx_lmap,
	    BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
	return (0);
}