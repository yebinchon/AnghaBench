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
struct g_raid_softc {int /*<<< orphan*/  sc_geom; } ;
struct g_provider {int dummy; } ;
struct g_consumer {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_CF_DIRECT_RECEIVE ; 
 scalar_t__ FUNC0 (struct g_consumer*,int,int,int) ; 
 scalar_t__ FUNC1 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*) ; 
 struct g_consumer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

struct g_consumer *
FUNC8(struct g_raid_softc *sc, const char *name)
{
	struct g_consumer *cp;
	struct g_provider *pp;

	FUNC6();

	if (FUNC7(name, "/dev/", 5) == 0)
		name += 5;
	pp = FUNC5(name);
	if (pp == NULL)
		return (NULL);
	cp = FUNC4(sc->sc_geom);
	cp->flags |= G_CF_DIRECT_RECEIVE;
	if (FUNC1(cp, pp) != 0) {
		FUNC2(cp);
		return (NULL);
	}
	if (FUNC0(cp, 1, 1, 1) != 0) {
		FUNC3(cp);
		FUNC2(cp);
		return (NULL);
	}
	return (cp);
}