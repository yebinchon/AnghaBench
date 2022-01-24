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
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; struct g_geom* geom; } ;
struct g_geom {int /*<<< orphan*/ * softc; int /*<<< orphan*/  name; } ;
struct bio_queue_head {int dummy; } ;
struct g_gate_softc {int sc_flags; scalar_t__ sc_ref; size_t sc_unit; struct g_provider* sc_provider; struct g_consumer* sc_readcons; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue_count; struct bio_queue_head sc_outqueue; struct bio_queue_head sc_inqueue; int /*<<< orphan*/  sc_callout; } ;
struct g_consumer {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int G_GATE_FLAG_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_GATE ; 
 int /*<<< orphan*/  FUNC3 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC5 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct g_gate_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_consumer*) ; 
 scalar_t__ g_gate_nunits ; 
 int /*<<< orphan*/ ** g_gate_units ; 
 int /*<<< orphan*/  g_gate_units_lock ; 
 int /*<<< orphan*/  FUNC11 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct g_geom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct g_gate_softc*) ; 

__attribute__((used)) static int
FUNC23(struct g_gate_softc *sc, boolean_t force)
{
	struct bio_queue_head queue;
	struct g_provider *pp;
	struct g_consumer *cp;
	struct g_geom *gp;
	struct bio *bp;

	FUNC12();
	FUNC18(&g_gate_units_lock, MA_OWNED);
	pp = sc->sc_provider;
	if (!force && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
		FUNC21(&g_gate_units_lock);
		return (EBUSY);
	}
	FUNC21(&g_gate_units_lock);
	FUNC20(&sc->sc_queue_mtx);
	if ((sc->sc_flags & G_GATE_FLAG_DESTROY) == 0)
		sc->sc_flags |= G_GATE_FLAG_DESTROY;
	FUNC22(sc);
	FUNC21(&sc->sc_queue_mtx);
	gp = pp->geom;
	FUNC16(pp, ENXIO);
	FUNC6(&sc->sc_callout);
	FUNC3(&queue);
	FUNC20(&sc->sc_queue_mtx);
	while ((bp = FUNC5(&sc->sc_inqueue)) != NULL) {
		sc->sc_queue_count--;
		FUNC4(&queue, bp);
	}
	while ((bp = FUNC5(&sc->sc_outqueue)) != NULL) {
		sc->sc_queue_count--;
		FUNC4(&queue, bp);
	}
	FUNC21(&sc->sc_queue_mtx);
	FUNC14();
	while ((bp = FUNC5(&queue)) != NULL) {
		FUNC1(1, bp, "Request canceled.");
		FUNC11(bp, ENXIO);
	}
	FUNC20(&g_gate_units_lock);
	/* One reference is ours. */
	sc->sc_ref--;
	while (sc->sc_ref > 0)
		FUNC17(&sc->sc_ref, &g_gate_units_lock, 0, "gg:destroy", 0);
	g_gate_units[sc->sc_unit] = NULL;
	FUNC2(g_gate_nunits > 0, ("negative g_gate_nunits?"));
	g_gate_nunits--;
	FUNC21(&g_gate_units_lock);
	FUNC19(&sc->sc_queue_mtx);
	FUNC13();
	if ((cp = sc->sc_readcons) != NULL) {
		sc->sc_readcons = NULL;
		(void)FUNC8(cp, -1, 0, 0);
		FUNC10(cp);
		FUNC9(cp);
	}
	FUNC0(1, "Device %s destroyed.", gp->name);
	gp->softc = NULL;
	FUNC15(gp, ENXIO);
	sc->sc_provider = NULL;
	FUNC7(sc, M_GATE);
	return (0);
}