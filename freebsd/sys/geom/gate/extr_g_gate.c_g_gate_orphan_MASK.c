#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_geom {struct g_gate_softc* softc; } ;
struct g_gate_softc {struct g_consumer* sc_readcons; } ;
struct g_consumer {TYPE_1__* provider; struct g_geom* geom; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct g_consumer *cp)
{
	struct g_gate_softc *sc;
	struct g_geom *gp;

	FUNC5();
	gp = cp->geom;
	sc = gp->softc;
	if (sc == NULL)
		return;
	FUNC1(cp == sc->sc_readcons, ("cp=%p sc_readcons=%p", cp,
	    sc->sc_readcons));
	sc->sc_readcons = NULL;
	FUNC0(1, "Destroying read consumer on provider %s orphan.",
	    cp->provider->name);
	(void)FUNC2(cp, -1, 0, 0);
	FUNC4(cp);
	FUNC3(cp);
}