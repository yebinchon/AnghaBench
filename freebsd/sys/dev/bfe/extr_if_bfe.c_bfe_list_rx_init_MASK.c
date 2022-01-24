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
struct bfe_softc {int /*<<< orphan*/  bfe_rx_map; int /*<<< orphan*/  bfe_rx_tag; struct bfe_rx_data* bfe_rx_ring; int /*<<< orphan*/  bfe_rx_list; scalar_t__ bfe_rx_cons; scalar_t__ bfe_rx_prod; } ;
struct bfe_rx_data {scalar_t__ bfe_ctrl; int /*<<< orphan*/ * bfe_mbuf; } ;
struct bfe_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_DMARX_PTR ; 
 int BFE_RX_LIST_CNT ; 
 int /*<<< orphan*/  BFE_RX_LIST_SIZE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int ENOBUFS ; 
 scalar_t__ FUNC1 (struct bfe_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bfe_softc *sc)
{
	struct bfe_rx_data *rd;
	int i;

	sc->bfe_rx_prod = sc->bfe_rx_cons = 0;
	FUNC3(sc->bfe_rx_list, BFE_RX_LIST_SIZE);
	for (i = 0; i < BFE_RX_LIST_CNT; i++) {
		rd = &sc->bfe_rx_ring[i];
		rd->bfe_mbuf = NULL;
		rd->bfe_ctrl = 0;
		if (FUNC1(sc, i) != 0)
			return (ENOBUFS);
	}

	FUNC2(sc->bfe_rx_tag, sc->bfe_rx_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	FUNC0(sc, BFE_DMARX_PTR, (i * sizeof(struct bfe_desc)));

	return (0);
}