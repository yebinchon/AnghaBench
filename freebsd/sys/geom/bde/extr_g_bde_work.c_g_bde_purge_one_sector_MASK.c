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
struct g_bde_softc {int /*<<< orphan*/  ncache; int /*<<< orphan*/  freelist; } ;
struct g_bde_sector {scalar_t__ ref; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct g_bde_sector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_bde_softc*,struct g_bde_sector*) ; 
 int /*<<< orphan*/  g_bde_ncache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct g_bde_softc*,struct g_bde_sector*) ; 
 int /*<<< orphan*/  list ; 

__attribute__((used)) static void
FUNC4(struct g_bde_softc *sc, struct g_bde_sector *sp)
{

	FUNC3(G_T_TOPOLOGY, "g_bde_purge_one_sector(%p, %p)", sc, sp);
	if (sp->ref != 0)
		return;
	FUNC0(&sc->freelist, sp, list);
	g_bde_ncache--;
	sc->ncache--;
	FUNC1(sp->data, sp->size);
	FUNC2(sc, sp);
}