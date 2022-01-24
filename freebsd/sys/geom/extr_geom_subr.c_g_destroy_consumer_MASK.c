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
struct g_geom {int flags; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  stat; struct g_geom* geom; int /*<<< orphan*/ * provider; } ;

/* Variables and functions */
 int G_GEOM_WITHER ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  consumer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct g_consumer*) ; 

void
FUNC9(struct g_consumer *cp)
{
	struct g_geom *gp;

	FUNC7();
	FUNC0(cp);
	FUNC8(G_T_TOPOLOGY, "g_destroy_consumer(%p)", cp);
	FUNC1 (cp->provider == NULL, ("g_destroy_consumer but attached"));
	FUNC1 (cp->acr == 0, ("g_destroy_consumer with acr"));
	FUNC1 (cp->acw == 0, ("g_destroy_consumer with acw"));
	FUNC1 (cp->ace == 0, ("g_destroy_consumer with ace"));
	FUNC4(cp);
	gp = cp->geom;
	FUNC2(cp, consumer);
	FUNC3(cp->stat);
	FUNC6(cp);
	if (gp->flags & G_GEOM_WITHER)
		FUNC5();
}