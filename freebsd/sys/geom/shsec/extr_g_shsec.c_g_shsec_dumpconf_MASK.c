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
typedef  int /*<<< orphan*/  u_int ;
struct sbuf {int dummy; } ;
struct g_shsec_softc {TYPE_1__* sc_provider; int /*<<< orphan*/  sc_ndisks; scalar_t__ sc_id; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_shsec_softc* softc; } ;
struct g_consumer {scalar_t__ index; } ;
struct TYPE_2__ {scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_shsec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,...) ; 

__attribute__((used)) static void
FUNC2(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_shsec_softc *sc;

	sc = gp->softc;
	if (sc == NULL)
		return;
	if (pp != NULL) {
		/* Nothing here. */
	} else if (cp != NULL) {
		FUNC1(sb, "%s<Number>%u</Number>\n", indent,
		    (u_int)cp->index);
	} else {
		FUNC1(sb, "%s<ID>%u</ID>\n", indent, (u_int)sc->sc_id);
		FUNC1(sb, "%s<Status>Total=%u, Online=%u</Status>\n",
		    indent, sc->sc_ndisks, FUNC0(sc));
		FUNC1(sb, "%s<State>", indent);
		if (sc->sc_provider != NULL && sc->sc_provider->error == 0)
			FUNC1(sb, "UP");
		else
			FUNC1(sb, "DOWN");
		FUNC1(sb, "</State>\n");
	}
}