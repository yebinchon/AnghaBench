#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dflt_curs_attr; TYPE_2__* sc; } ;
typedef  TYPE_1__ scr_stat ;
struct TYPE_8__ {int first_vty; int vtys; int /*<<< orphan*/  curs_attr; int /*<<< orphan*/  dflt_curs_attr; } ;
typedef  TYPE_2__ sc_softc_t ;

/* Variables and functions */
 int CONS_DEFAULT_CURSOR ; 
 int CONS_LOCAL_CURSOR ; 
 int CONS_RESET_CURSOR ; 
 int CONS_SHAPEONLY_CURSOR ; 
 struct tty* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_1__* FUNC3 (struct tty*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(scr_stat *scp, int flags, int base, int height)
{
    sc_softc_t *sc;
    struct tty *tp;
    int s;
    int i;

    if (flags == -1)
	flags = CONS_SHAPEONLY_CURSOR;

    s = FUNC4();
    if (flags & CONS_LOCAL_CURSOR) {
	/* local (per vty) change */
	FUNC1(scp, flags, base, height);
	FUNC5(s);
	return;
    }

    /* global change */
    sc = scp->sc;
    if (flags & CONS_RESET_CURSOR)
	sc->curs_attr = sc->dflt_curs_attr;
    else if (flags & CONS_DEFAULT_CURSOR) {
	FUNC2(&sc->dflt_curs_attr, flags, base, height);
	sc->curs_attr = sc->dflt_curs_attr;
    } else
	FUNC2(&sc->curs_attr, flags, base, height);

    for (i = sc->first_vty; i < sc->first_vty + sc->vtys; ++i) {
	if ((tp = FUNC0(sc, i)) == NULL)
	    continue;
	if ((scp = FUNC3(tp)) == NULL)
	    continue;
	scp->dflt_curs_attr = sc->curs_attr;
	FUNC1(scp, CONS_RESET_CURSOR, -1, -1);
    }
    FUNC5(s);
}