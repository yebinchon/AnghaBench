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
struct g_cache_softc {scalar_t__ sc_nent; scalar_t__ sc_maxent; int /*<<< orphan*/  sc_zone; int /*<<< orphan*/  sc_cachefull; int /*<<< orphan*/  sc_nused; int /*<<< orphan*/  sc_usedlist; int /*<<< orphan*/  sc_mtx; } ;
struct g_cache_desc {int /*<<< orphan*/ * d_data; scalar_t__ d_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_GCACHE ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct g_cache_desc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d_next ; 
 int /*<<< orphan*/  d_used ; 
 int /*<<< orphan*/  FUNC4 (struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 struct g_cache_desc* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct g_cache_desc *
FUNC8(struct g_cache_softc *sc)
{
	struct g_cache_desc *dp;

	FUNC6(&sc->sc_mtx, MA_OWNED);

	if (!FUNC1(&sc->sc_usedlist)) {
		dp = FUNC2(&sc->sc_usedlist);
		FUNC3(&sc->sc_usedlist, dp, d_used);
		sc->sc_nused--;
		dp->d_flags = 0;
		FUNC0(dp, d_next);
		return (dp);
	}
	if (sc->sc_nent > sc->sc_maxent) {
		sc->sc_cachefull++;
		return (NULL);
	}
	dp = FUNC5(sizeof(*dp), M_GCACHE, M_NOWAIT | M_ZERO);
	if (dp == NULL)
		return (NULL);
	dp->d_data = FUNC7(sc->sc_zone, M_NOWAIT);
	if (dp->d_data == NULL) {
		FUNC4(dp, M_GCACHE);
		return (NULL);
	}
	sc->sc_nent++;
	return (dp);
}