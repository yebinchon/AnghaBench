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
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  stat; struct g_geom* geom; int /*<<< orphan*/  consumers; } ;
struct g_geom {int flags; int /*<<< orphan*/  (* providergone ) (struct g_provider*) ;} ;

/* Variables and functions */
 int G_GEOM_WITHER ; 
 int /*<<< orphan*/  FUNC0 (struct g_provider*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct g_provider*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct g_provider*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  provider ; 
 int /*<<< orphan*/  FUNC9 (struct g_provider*) ; 

void
FUNC10(struct g_provider *pp)
{
	struct g_geom *gp;

	FUNC8();
	FUNC0(pp);
	FUNC1(FUNC2(&pp->consumers),
	    ("g_destroy_provider but attached"));
	FUNC1 (pp->acr == 0, ("g_destroy_provider with acr"));
	FUNC1 (pp->acw == 0, ("g_destroy_provider with acw"));
	FUNC1 (pp->ace == 0, ("g_destroy_provider with ace"));
	FUNC5(pp);
	FUNC3(pp, provider);
	gp = pp->geom;
	FUNC4(pp->stat);
	/*
	 * If a callback was provided, send notification that the provider
	 * is now gone.
	 */
	if (gp->providergone != NULL)
		gp->providergone(pp);

	FUNC7(pp);
	if ((gp->flags & G_GEOM_WITHER))
		FUNC6();
}