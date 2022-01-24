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
typedef  struct dtsec_softc* t_Handle ;
struct dtsec_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  e_FmPortExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(t_Handle app,
    e_FmPortExceptions exception)
{
	struct dtsec_softc *sc;

	sc = app;
	FUNC0(sc->sc_dev, "RX exception: %i: %s.\n", exception,
	    FUNC1(exception));
}