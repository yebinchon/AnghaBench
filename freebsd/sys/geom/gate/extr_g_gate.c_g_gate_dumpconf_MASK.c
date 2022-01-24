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
struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_gate_softc* softc; } ;
struct g_gate_softc {char* sc_unit; int sc_flags; char* sc_timeout; char* sc_info; char* sc_queue_count; char* sc_queue_size; char* sc_ref; TYPE_2__* sc_readcons; scalar_t__ sc_readoffset; } ;
struct g_consumer {int dummy; } ;
typedef  char* intmax_t ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int G_GATE_FLAG_READONLY ; 
 int G_GATE_FLAG_WRITEONLY ; 
 struct g_gate_softc* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g_gate_softc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,char const*,char*) ; 

__attribute__((used)) static void
FUNC5(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_gate_softc *sc;

	sc = gp->softc;
	if (sc == NULL || pp != NULL || cp != NULL)
		return;
	sc = FUNC0(sc->sc_unit, NULL);
	if (sc == NULL)
		return;
	if ((sc->sc_flags & G_GATE_FLAG_READONLY) != 0) {
		FUNC4(sb, "%s<access>%s</access>\n", indent, "read-only");
	} else if ((sc->sc_flags & G_GATE_FLAG_WRITEONLY) != 0) {
		FUNC4(sb, "%s<access>%s</access>\n", indent,
		    "write-only");
	} else {
		FUNC4(sb, "%s<access>%s</access>\n", indent,
		    "read-write");
	}
	if (sc->sc_readcons != NULL) {
		FUNC4(sb, "%s<read_offset>%jd</read_offset>\n",
		    indent, (intmax_t)sc->sc_readoffset);
		FUNC4(sb, "%s<read_provider>%s</read_provider>\n",
		    indent, sc->sc_readcons->provider->name);
	}
	FUNC4(sb, "%s<timeout>%u</timeout>\n", indent, sc->sc_timeout);
	FUNC4(sb, "%s<info>%s</info>\n", indent, sc->sc_info);
	FUNC4(sb, "%s<queue_count>%u</queue_count>\n", indent,
	    sc->sc_queue_count);
	FUNC4(sb, "%s<queue_size>%u</queue_size>\n", indent,
	    sc->sc_queue_size);
	FUNC4(sb, "%s<ref>%u</ref>\n", indent, sc->sc_ref);
	FUNC4(sb, "%s<unit>%d</unit>\n", indent, sc->sc_unit);
	FUNC3();
	FUNC1(sc);
	FUNC2();
}