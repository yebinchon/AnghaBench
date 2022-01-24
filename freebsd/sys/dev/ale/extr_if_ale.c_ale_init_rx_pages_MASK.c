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
struct TYPE_2__ {struct ale_rx_page* ale_rx_page; scalar_t__ ale_rx_curp; scalar_t__ ale_rx_seqno; } ;
struct ale_softc {int /*<<< orphan*/  ale_pagesize; TYPE_1__ ale_cdata; scalar_t__ ale_morework; } ;
struct ale_rx_page {int /*<<< orphan*/  cmb_map; int /*<<< orphan*/  cmb_tag; int /*<<< orphan*/  page_map; int /*<<< orphan*/  page_tag; scalar_t__* cmb_addr; scalar_t__ cons; scalar_t__* page_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  ALE_RX_CMB_SZ ; 
 int ALE_RX_PAGES ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ale_softc *sc)
{
	struct ale_rx_page *rx_page;
	int i;

	FUNC0(sc);

	sc->ale_morework = 0;
	sc->ale_cdata.ale_rx_seqno = 0;
	sc->ale_cdata.ale_rx_curp = 0;

	for (i = 0; i < ALE_RX_PAGES; i++) {
		rx_page = &sc->ale_cdata.ale_rx_page[i];
		FUNC2(rx_page->page_addr, sc->ale_pagesize);
		FUNC2(rx_page->cmb_addr, ALE_RX_CMB_SZ);
		rx_page->cons = 0;
		*rx_page->cmb_addr = 0;
		FUNC1(rx_page->page_tag, rx_page->page_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		FUNC1(rx_page->cmb_tag, rx_page->cmb_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}
}