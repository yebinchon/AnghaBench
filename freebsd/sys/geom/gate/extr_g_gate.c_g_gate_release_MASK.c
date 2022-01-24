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
struct g_gate_softc {scalar_t__ sc_ref; int sc_flags; int /*<<< orphan*/  sc_name; } ;

/* Variables and functions */
 int G_GATE_FLAG_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  g_gate_units_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC5(struct g_gate_softc *sc)
{

	FUNC1();
	FUNC2(&g_gate_units_lock);
	sc->sc_ref--;
	FUNC0(sc->sc_ref >= 0, ("Negative sc_ref for %s.", sc->sc_name));
	if (sc->sc_ref == 0 && (sc->sc_flags & G_GATE_FLAG_DESTROY) != 0)
		FUNC4(&sc->sc_ref);
	FUNC3(&g_gate_units_lock);
}