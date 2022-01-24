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
struct urtw_softc {int /*<<< orphan*/ * sc_rx; int /*<<< orphan*/  sc_rx_inactive; int /*<<< orphan*/  sc_rx_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int URTW_RX_DATA_LIST_COUNT ; 
 int /*<<< orphan*/  next ; 
 int FUNC2 (struct urtw_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct urtw_softc *sc)
{
	int error, i;

	error = FUNC2(sc,
	    sc->sc_rx, URTW_RX_DATA_LIST_COUNT,
	    MCLBYTES, NULL /* mbufs */);
	if (error != 0)
		return (error);

	FUNC0(&sc->sc_rx_active);
	FUNC0(&sc->sc_rx_inactive);

	for (i = 0; i < URTW_RX_DATA_LIST_COUNT; i++)
		FUNC1(&sc->sc_rx_inactive, &sc->sc_rx[i], next);

	return (0);
}