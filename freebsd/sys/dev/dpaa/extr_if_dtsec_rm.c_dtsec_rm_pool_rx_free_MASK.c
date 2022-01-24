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
struct dtsec_softc {int /*<<< orphan*/ * sc_rx_zone; int /*<<< orphan*/ * sc_rx_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct dtsec_softc *sc)
{

	if (sc->sc_rx_pool != NULL)
		FUNC0(sc->sc_rx_pool);

	if (sc->sc_rx_zone != NULL)
		FUNC1(sc->sc_rx_zone);
}