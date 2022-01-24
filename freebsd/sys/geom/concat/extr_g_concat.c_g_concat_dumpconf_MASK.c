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
struct g_provider {int dummy; } ;
struct g_geom {struct g_concat_softc* softc; } ;
struct g_consumer {struct g_concat_disk* private; } ;
struct g_concat_softc {int sc_type; TYPE_1__* sc_provider; int /*<<< orphan*/  sc_ndisks; scalar_t__ sc_id; } ;
struct g_concat_disk {scalar_t__ d_start; scalar_t__ d_end; } ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_2__ {scalar_t__ error; } ;

/* Variables and functions */
#define  G_CONCAT_TYPE_AUTOMATIC 129 
#define  G_CONCAT_TYPE_MANUAL 128 
 int /*<<< orphan*/  FUNC0 (struct g_concat_softc*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC4(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_concat_softc *sc;

	FUNC1();
	sc = gp->softc;
	if (sc == NULL)
		return;
	if (pp != NULL) {
		/* Nothing here. */
	} else if (cp != NULL) {
		struct g_concat_disk *disk;

		disk = cp->private;
		if (disk == NULL)
			return;
		FUNC3(sb, "%s<End>%jd</End>\n", indent,
		    (intmax_t)disk->d_end);
		FUNC3(sb, "%s<Start>%jd</Start>\n", indent,
		    (intmax_t)disk->d_start);
	} else {
		FUNC3(sb, "%s<ID>%u</ID>\n", indent, (u_int)sc->sc_id);
		FUNC3(sb, "%s<Type>", indent);
		switch (sc->sc_type) {
		case G_CONCAT_TYPE_AUTOMATIC:
			FUNC2(sb, "AUTOMATIC");
			break;
		case G_CONCAT_TYPE_MANUAL:
			FUNC2(sb, "MANUAL");
			break;
		default:
			FUNC2(sb, "UNKNOWN");
			break;
		}
		FUNC2(sb, "</Type>\n");
		FUNC3(sb, "%s<Status>Total=%u, Online=%u</Status>\n",
		    indent, sc->sc_ndisks, FUNC0(sc));
		FUNC3(sb, "%s<State>", indent);
		if (sc->sc_provider != NULL && sc->sc_provider->error == 0)
			FUNC2(sb, "UP");
		else
			FUNC2(sb, "DOWN");
		FUNC2(sb, "</State>\n");
	}
}