#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_multipath_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ndisks; } ;
struct g_consumer {int index; int /*<<< orphan*/  private; TYPE_2__* geom; TYPE_1__* provider; } ;
struct TYPE_4__ {char* name; struct g_multipath_softc* softc; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_LOST ; 
 int MP_POSTED ; 
 int /*<<< orphan*/  FUNC0 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC6(struct g_consumer *cp)
{
	struct g_multipath_softc *sc;
	uintptr_t *cnt;

	FUNC2();
	FUNC5("GEOM_MULTIPATH: %s in %s was disconnected\n",
	    cp->provider->name, cp->geom->name);
	sc = cp->geom->softc;
	cnt = (uintptr_t *)&cp->private;
	FUNC3(&sc->sc_mtx);
	sc->sc_ndisks--;
	FUNC1(cp, MP_LOST);
	if (*cnt == 0 && (cp->index & MP_POSTED) == 0) {
		cp->index |= MP_POSTED;
		FUNC4(&sc->sc_mtx);
		FUNC0(cp, 0);
	} else
		FUNC4(&sc->sc_mtx);
}