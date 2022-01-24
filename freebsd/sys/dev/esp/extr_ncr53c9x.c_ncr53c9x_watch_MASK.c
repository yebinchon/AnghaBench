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
typedef  scalar_t__ time_t ;
struct ncr53c9x_tinfo {int /*<<< orphan*/  luns; int /*<<< orphan*/ ** lun; } ;
struct ncr53c9x_softc {int sc_ntarg; int /*<<< orphan*/  sc_watchdog; struct ncr53c9x_tinfo* sc_tinfo; } ;
struct ncr53c9x_linfo {scalar_t__ last_used; scalar_t__ used; size_t lun; int /*<<< orphan*/ * untagged; } ;

/* Variables and functions */
 struct ncr53c9x_linfo* FUNC0 (int /*<<< orphan*/ *) ; 
 struct ncr53c9x_linfo* FUNC1 (struct ncr53c9x_linfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ncr53c9x_linfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC3 (struct ncr53c9x_softc*,int /*<<< orphan*/ ) ; 
 size_t NCR_NLUN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void (*) (void*),struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ncr53c9x_linfo*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ time_second ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct ncr53c9x_softc *sc = arg;
	struct ncr53c9x_linfo *li;
	struct ncr53c9x_tinfo *ti;
	time_t old;
	int t;

	FUNC3(sc, MA_OWNED);

	/* Delete any structures that have not been used in 10min. */
	old = time_second - (10 * 60);

	for (t = 0; t < sc->sc_ntarg; t++) {
		ti = &sc->sc_tinfo[t];
		li = FUNC0(&ti->luns);
		while (li) {
			if (li->last_used < old &&
			    li->untagged == NULL &&
			    li->used == 0) {
				if (li->lun < NCR_NLUN)
					ti->lun[li->lun] = NULL;
				FUNC2(li, link);
				FUNC5(li, M_DEVBUF);
				/* Restart the search at the beginning. */
				li = FUNC0(&ti->luns);
				continue;
			}
			li = FUNC1(li, link);
		}
	}
	FUNC4(&sc->sc_watchdog, 60 * hz, ncr53c9x_watch, sc);
}