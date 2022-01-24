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
typedef  int /*<<< orphan*/  u_int ;
struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_journal_softc {scalar_t__ sc_id; scalar_t__ sc_jend; scalar_t__ sc_jstart; struct g_consumer* sc_jconsumer; struct g_consumer* sc_dconsumer; } ;
struct g_geom {struct g_journal_softc* softc; } ;
struct g_consumer {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC3(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_journal_softc *sc;

	FUNC0();

	sc = gp->softc;
	if (sc == NULL)
		return;
	if (pp != NULL) {
		/* Nothing here. */
	} else if (cp != NULL) {
		int first = 1;

		FUNC2(sb, "%s<Role>", indent);
		if (cp == sc->sc_dconsumer) {
			FUNC1(sb, "Data");
			first = 0;
		}
		if (cp == sc->sc_jconsumer) {
			if (!first)
				FUNC1(sb, ",");
			FUNC1(sb, "Journal");
		}
		FUNC1(sb, "</Role>\n");
		if (cp == sc->sc_jconsumer) {
			FUNC2(sb, "<Jstart>%jd</Jstart>\n",
			    (intmax_t)sc->sc_jstart);
			FUNC2(sb, "<Jend>%jd</Jend>\n",
			    (intmax_t)sc->sc_jend);
		}
	} else {
		FUNC2(sb, "%s<ID>%u</ID>\n", indent, (u_int)sc->sc_id);
	}
}