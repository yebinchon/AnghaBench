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
struct wi_softc {int sc_portnum; int sc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WI_CMD_ENABLE ; 
 int /*<<< orphan*/  WI_INTRS ; 
 int /*<<< orphan*/  WI_INT_EN ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct wi_softc *sc)
{
	/* Enable interrupts */
	FUNC0(sc, WI_INT_EN, WI_INTRS);

	/* enable port */
	FUNC1(sc, WI_CMD_ENABLE | sc->sc_portnum, 0, 0, 0);
	sc->sc_enabled = 1;
}