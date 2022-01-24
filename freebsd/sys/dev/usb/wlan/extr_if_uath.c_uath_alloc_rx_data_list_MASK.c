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
struct uath_softc {int /*<<< orphan*/ * sc_rx; int /*<<< orphan*/  sc_rx_inactive; int /*<<< orphan*/  sc_rx_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int UATH_RX_DATA_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  st_rx_inactive ; 
 int FUNC3 (struct uath_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct uath_softc *sc)
{
	int error, i;

	/* XXX is it enough to store the RX packet with MCLBYTES bytes?  */
	error = FUNC3(sc,
	    sc->sc_rx, UATH_RX_DATA_LIST_COUNT, MCLBYTES,
	    NULL /* setup mbufs */);
	if (error != 0)
		return (error);

	FUNC0(&sc->sc_rx_active);
	FUNC0(&sc->sc_rx_inactive);

	for (i = 0; i < UATH_RX_DATA_LIST_COUNT; i++) {
		FUNC1(&sc->sc_rx_inactive, &sc->sc_rx[i],
		    next);
		FUNC2(sc, st_rx_inactive);
	}

	return (0);
}