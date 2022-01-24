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
struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_multipath_softc {int sc_active_active; int sc_ndisks; char* sc_uuid; struct g_consumer* sc_active; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_consumer {int index; } ;

/* Variables and functions */
 int MP_FAIL ; 
 int MP_LOST ; 
 int MP_NEW ; 
 int FUNC0 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,char const*,char*) ; 

__attribute__((used)) static void
FUNC3(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_multipath_softc *sc;
	int good;

	FUNC1();

	sc = gp->softc;
	if (sc == NULL)
		return;
	if (cp != NULL) {
		FUNC2(sb, "%s<State>%s</State>\n", indent,
		    (cp->index & MP_NEW) ? "NEW" :
		    (cp->index & MP_LOST) ? "LOST" :
		    (cp->index & MP_FAIL) ? "FAIL" :
		    (sc->sc_active_active == 1 || sc->sc_active == cp) ?
		     "ACTIVE" :
		     sc->sc_active_active == 2 ? "READ" : "PASSIVE");
	} else {
		good = FUNC0(gp);
		FUNC2(sb, "%s<State>%s</State>\n", indent,
		    good == 0 ? "BROKEN" :
		    (good != sc->sc_ndisks || sc->sc_ndisks == 1) ?
		    "DEGRADED" : "OPTIMAL");
	}
	if (cp == NULL && pp == NULL) {
		FUNC2(sb, "%s<UUID>%s</UUID>\n", indent, sc->sc_uuid);
		FUNC2(sb, "%s<Mode>Active/%s</Mode>\n", indent,
		    sc->sc_active_active == 2 ? "Read" :
		    sc->sc_active_active == 1 ? "Active" : "Passive");
		FUNC2(sb, "%s<Type>%s</Type>\n", indent,
		    sc->sc_uuid[0] == 0 ? "MANUAL" : "AUTOMATIC");
	}
}