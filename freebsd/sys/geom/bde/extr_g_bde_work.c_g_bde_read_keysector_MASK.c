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
struct g_bde_work {int dummy; } ;
struct g_bde_softc {int dummy; } ;
struct g_bde_sector {scalar_t__ state; struct g_bde_work* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 scalar_t__ VALID ; 
 struct g_bde_sector* FUNC0 (struct g_bde_work*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_bde_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct g_bde_work*) ; 
 scalar_t__ FUNC3 (struct g_bde_sector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct g_bde_work*) ; 

__attribute__((used)) static struct g_bde_sector *
FUNC5(struct g_bde_softc *sc, struct g_bde_work *wp)
{
	struct g_bde_sector *sp;

	FUNC4(G_T_TOPOLOGY, "g_bde_read_keysector(%p)", wp);
	sp = FUNC0(wp);
	if (sp == NULL) {
		FUNC1(sc, -1);
		sp = FUNC0(wp);
	}
	if (sp == NULL)
		return (sp);
	if (sp->owner != wp)
		return (sp);
	if (sp->state == VALID)
		return (sp);
	if (FUNC3(sp) == 0)
		return (sp);
	FUNC2(wp);
	return (NULL);
}