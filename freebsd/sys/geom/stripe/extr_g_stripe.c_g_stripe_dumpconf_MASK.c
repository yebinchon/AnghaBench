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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_int ;
struct sbuf {int dummy; } ;
struct g_stripe_softc {int sc_type; TYPE_1__* sc_provider; int /*<<< orphan*/  sc_ndisks; scalar_t__ sc_stripesize; scalar_t__ sc_id; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_stripe_softc* softc; } ;
struct g_consumer {scalar_t__ index; } ;
struct TYPE_2__ {scalar_t__ error; } ;

/* Variables and functions */
#define  G_STRIPE_TYPE_AUTOMATIC 129 
#define  G_STRIPE_TYPE_MANUAL 128 
 int /*<<< orphan*/  FUNC0 (struct g_stripe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC3(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_stripe_softc *sc;

	sc = gp->softc;
	if (sc == NULL)
		return;
	if (pp != NULL) {
		/* Nothing here. */
	} else if (cp != NULL) {
		FUNC2(sb, "%s<Number>%u</Number>\n", indent,
		    (u_int)cp->index);
	} else {
		FUNC2(sb, "%s<ID>%u</ID>\n", indent, (u_int)sc->sc_id);
		FUNC2(sb, "%s<Stripesize>%ju</Stripesize>\n", indent,
		    (uintmax_t)sc->sc_stripesize);
		FUNC2(sb, "%s<Type>", indent);
		switch (sc->sc_type) {
		case G_STRIPE_TYPE_AUTOMATIC:
			FUNC1(sb, "AUTOMATIC");
			break;
		case G_STRIPE_TYPE_MANUAL:
			FUNC1(sb, "MANUAL");
			break;
		default:
			FUNC1(sb, "UNKNOWN");
			break;
		}
		FUNC1(sb, "</Type>\n");
		FUNC2(sb, "%s<Status>Total=%u, Online=%u</Status>\n",
		    indent, sc->sc_ndisks, FUNC0(sc));
		FUNC2(sb, "%s<State>", indent);
		if (sc->sc_provider != NULL && sc->sc_provider->error == 0)
			FUNC1(sb, "UP");
		else
			FUNC1(sb, "DOWN");
		FUNC1(sb, "</State>\n");
	}
}