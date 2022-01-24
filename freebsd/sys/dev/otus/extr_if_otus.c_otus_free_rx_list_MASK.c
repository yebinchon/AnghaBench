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
struct otus_softc {int /*<<< orphan*/  sc_rx; int /*<<< orphan*/  sc_rx_active; int /*<<< orphan*/  sc_rx_inactive; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTUS_RX_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct otus_softc *sc)
{
	/* prevent further allocations from RX list(s) */
	FUNC0(&sc->sc_rx_inactive);
	FUNC0(&sc->sc_rx_active);

	FUNC1(sc, sc->sc_rx, OTUS_RX_LIST_COUNT);
}