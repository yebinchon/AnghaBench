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
struct g_raid3_softc {int dummy; } ;
struct g_provider {int /*<<< orphan*/  name; TYPE_1__* geom; } ;
struct g_consumer {int acw; int /*<<< orphan*/  ace; int /*<<< orphan*/  acr; struct g_provider* provider; int /*<<< orphan*/ * private; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int G_GEOM_WITHER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct g_consumer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_raid3_destroy_consumer ; 
 scalar_t__ FUNC5 (struct g_raid3_softc*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct g_raid3_softc *sc, struct g_consumer *cp)
{
	struct g_provider *pp;
	int retaste_wait;

	FUNC6();

	cp->private = NULL;
	if (FUNC5(sc, cp))
		return;
	FUNC0(2, "Consumer %s destroyed.", cp->provider->name);
	pp = cp->provider;
	retaste_wait = 0;
	if (cp->acw == 1) {
		if ((pp->geom->flags & G_GEOM_WITHER) == 0)
			retaste_wait = 1;
	}
	FUNC0(2, "Access %s r%dw%de%d = %d", pp->name, -cp->acr,
	    -cp->acw, -cp->ace, 0);
	if (cp->acr > 0 || cp->acw > 0 || cp->ace > 0)
		FUNC1(cp, -cp->acr, -cp->acw, -cp->ace);
	if (retaste_wait) {
		/*
		 * After retaste event was send (inside g_access()), we can send
		 * event to detach and destroy consumer.
		 * A class, which has consumer to the given provider connected
		 * will not receive retaste event for the provider.
		 * This is the way how I ignore retaste events when I close
		 * consumers opened for write: I detach and destroy consumer
		 * after retaste event is sent.
		 */
		FUNC4(g_raid3_destroy_consumer, cp, M_WAITOK, NULL);
		return;
	}
	FUNC0(1, "Consumer %s destroyed.", pp->name);
	FUNC3(cp);
	FUNC2(cp);
}