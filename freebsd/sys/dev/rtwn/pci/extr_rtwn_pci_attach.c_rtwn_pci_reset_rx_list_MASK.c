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
struct rtwn_softc {int dummy; } ;
struct rtwn_rx_ring {scalar_t__ cur; int /*<<< orphan*/ * desc; struct rtwn_rx_data* rx_data; } ;
struct rtwn_rx_data {int /*<<< orphan*/  paddr; } ;
struct rtwn_pci_softc {struct rtwn_rx_ring rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  MJUMPAGESIZE ; 
 int RTWN_PCI_RX_LIST_COUNT ; 
 struct rtwn_pci_softc* FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_pci_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct rtwn_softc *sc)
{
	struct rtwn_pci_softc *pc = FUNC0(sc);
	struct rtwn_rx_ring *rx_ring = &pc->rx_ring;
	struct rtwn_rx_data *rx_data;
	int i;

	for (i = 0; i < RTWN_PCI_RX_LIST_COUNT; i++) {
		rx_data = &rx_ring->rx_data[i];
		FUNC1(pc, &rx_ring->desc[i],
		    rx_data->paddr, MJUMPAGESIZE, i);
	}
	rx_ring->cur = 0;
}