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
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_pio_rxqueue {struct bwn_mac* prq_mac; } ;
struct bwn_mac {scalar_t__ mac_status; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 scalar_t__ BWN_MAC_STATUS_STARTED ; 
 scalar_t__ FUNC1 (struct bwn_pio_rxqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct bwn_pio_rxqueue *prq)
{
	struct bwn_mac *mac = prq->prq_mac;
	struct bwn_softc *sc = mac->mac_sc;
	unsigned int i;

	FUNC0(sc);

	if (mac->mac_status < BWN_MAC_STATUS_STARTED)
		return (0);

	for (i = 0; i < 5000; i++) {
		if (FUNC1(prq) == 0)
			break;
	}
	if (i >= 5000)
		FUNC2(sc->sc_dev, "too many RX frames in PIO mode\n");
	return ((i > 0) ? 1 : 0);
}