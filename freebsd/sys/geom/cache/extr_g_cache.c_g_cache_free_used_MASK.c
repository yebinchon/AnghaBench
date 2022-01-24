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
typedef  int u_int ;
struct g_cache_softc {int sc_maxent; int sc_nused; int /*<<< orphan*/  sc_usedlist; int /*<<< orphan*/  sc_mtx; } ;
struct g_cache_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct g_cache_desc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d_next ; 
 int /*<<< orphan*/  d_used ; 
 int /*<<< orphan*/  FUNC5 (struct g_cache_softc*,struct g_cache_desc*) ; 
 int g_cache_used_lo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct g_cache_softc *sc)
{
	struct g_cache_desc *dp;
	u_int n;

	FUNC6(&sc->sc_mtx, MA_OWNED);

	n = g_cache_used_lo * sc->sc_maxent / 100;
	while (sc->sc_nused > n) {
		FUNC0(!FUNC2(&sc->sc_usedlist), ("used list empty"));
		dp = FUNC3(&sc->sc_usedlist);
		FUNC4(&sc->sc_usedlist, dp, d_used);
		sc->sc_nused--;
		FUNC1(dp, d_next);
		FUNC5(sc, dp);
	}
}