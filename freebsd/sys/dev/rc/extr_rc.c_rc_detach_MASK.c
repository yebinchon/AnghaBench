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
struct rc_softc {int /*<<< orphan*/  sc_swicookie; int /*<<< orphan*/  sc_hwicookie; int /*<<< orphan*/  sc_irq; struct rc_chans* sc_channels; } ;
struct rc_chans {int /*<<< orphan*/  rc_tp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CD180_NCHAN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct rc_softc *sc;
	struct rc_chans *rc;
	int error, i;

	sc = FUNC1(dev);

	rc = sc->sc_channels;
	for (i = 0; i < CD180_NCHAN; i++, rc++)
		FUNC5(rc->rc_tp);

	error = FUNC0(dev, sc->sc_irq, sc->sc_hwicookie);
	if (error)
		FUNC2(dev, "failed to deregister interrupt handler\n");
	FUNC4(sc->sc_swicookie);
	FUNC3(dev);

	return (0);
}