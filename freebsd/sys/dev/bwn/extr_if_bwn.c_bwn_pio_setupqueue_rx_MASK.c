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
struct bwn_pio_rxqueue {scalar_t__ prq_base; int /*<<< orphan*/  prq_rev; struct bwn_mac* prq_mac; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 scalar_t__ FUNC3 (struct bwn_mac*,int) ; 

__attribute__((used)) static void
FUNC4(struct bwn_mac *mac, struct bwn_pio_rxqueue *prq,
    int index)
{
	struct bwn_softc *sc = mac->mac_sc;

	prq->prq_mac = mac;
	prq->prq_rev = FUNC1(sc->sc_dev);
	prq->prq_base = FUNC3(mac, index) + FUNC0(mac);
	FUNC2(mac, index, 1);
}