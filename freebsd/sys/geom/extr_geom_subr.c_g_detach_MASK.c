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
struct g_provider {int flags; TYPE_1__* geom; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; scalar_t__ nstart; scalar_t__ nend; TYPE_2__* geom; struct g_provider* provider; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int G_GEOM_WITHER ; 
 int G_PF_WITHER ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  consumers ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(struct g_consumer *cp)
{
	struct g_provider *pp;

	FUNC4();
	FUNC0(cp);
	FUNC5(G_T_TOPOLOGY, "g_detach(%p)", cp);
	FUNC1(cp->provider != NULL, ("detach but not attached"));
	FUNC1(cp->acr == 0, ("detach but nonzero acr"));
	FUNC1(cp->acw == 0, ("detach but nonzero acw"));
	FUNC1(cp->ace == 0, ("detach but nonzero ace"));
	FUNC1(cp->nstart == cp->nend,
	    ("detach with active requests"));
	pp = cp->provider;
	FUNC2(cp, consumers);
	cp->provider = NULL;
	if ((cp->geom->flags & G_GEOM_WITHER) ||
	    (pp->geom->flags & G_GEOM_WITHER) ||
	    (pp->flags & G_PF_WITHER))
		FUNC3();
	FUNC6(cp->geom);
}