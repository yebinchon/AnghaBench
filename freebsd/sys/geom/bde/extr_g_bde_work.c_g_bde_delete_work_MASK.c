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
struct g_bde_work {struct g_bde_softc* softc; } ;
struct g_bde_softc {int /*<<< orphan*/  worklist; int /*<<< orphan*/  nwork; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GBDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct g_bde_work*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_bde_work*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_bde_nwork ; 
 int /*<<< orphan*/  list ; 

__attribute__((used)) static void
FUNC2(struct g_bde_work *wp)
{
	struct g_bde_softc *sc;

	sc = wp->softc;
	g_bde_nwork--;
	sc->nwork--;
	FUNC0(&sc->worklist, wp, list);
	FUNC1(wp, M_GBDE);
}