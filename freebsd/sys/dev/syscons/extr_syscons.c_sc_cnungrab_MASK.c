#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct consdev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  grab_level; int /*<<< orphan*/ * grab_state; } ;
typedef  TYPE_1__ sc_softc_t ;
struct TYPE_7__ {TYPE_1__* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* sc_console ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct consdev *cp)
{
    sc_softc_t *sc;
    int lev;

    sc = sc_console->sc;
    lev = FUNC1(&sc->grab_level) - 1;
    if (lev >= 0 && lev < 2) {
	FUNC3(sc, &sc->grab_state[lev]);
	FUNC4(sc, &sc->grab_state[lev]);
	FUNC2(sc, &sc->grab_state[lev]);
    }
    FUNC0(&sc->grab_level, -1);
}