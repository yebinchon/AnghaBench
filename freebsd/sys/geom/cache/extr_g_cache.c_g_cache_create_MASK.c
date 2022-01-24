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
struct g_provider {int sectorsize; int mediasize; int /*<<< orphan*/  name; } ;
struct g_geom {int /*<<< orphan*/  name; int /*<<< orphan*/  dumpconf; int /*<<< orphan*/  access; int /*<<< orphan*/  orphan; int /*<<< orphan*/  start; struct g_cache_softc* softc; } ;
struct g_consumer {int dummy; } ;
struct g_class {int dummy; } ;
struct g_cache_softc {int sc_type; int sc_bshift; int sc_bsize; int sc_maxent; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_tail; struct g_geom* sc_geom; int /*<<< orphan*/  sc_usedlist; int /*<<< orphan*/ * sc_desclist; int /*<<< orphan*/  sc_zone; } ;
struct g_cache_metadata {int md_size; int md_bsize; int /*<<< orphan*/  md_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct g_cache_softc*) ; 
 int G_CACHE_BUCKETS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int G_CACHE_TYPE_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAXPHYS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int,struct g_cache_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct g_cache_softc*) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  g_cache_access ; 
 int /*<<< orphan*/  g_cache_dumpconf ; 
 int /*<<< orphan*/ * FUNC9 (struct g_class*,char const*) ; 
 int /*<<< orphan*/  g_cache_go ; 
 int /*<<< orphan*/  g_cache_orphan ; 
 int /*<<< orphan*/  g_cache_start ; 
 int g_cache_timeout ; 
 int /*<<< orphan*/  FUNC10 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC11 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC12 (struct g_provider*) ; 
 int /*<<< orphan*/  FUNC13 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct g_cache_softc*) ; 
 struct g_cache_softc* FUNC15 (int,int) ; 
 struct g_consumer* FUNC16 (struct g_geom*) ; 
 struct g_geom* FUNC17 (struct g_class*,char*,int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC18 (struct g_geom*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct g_geom *
FUNC23(struct g_class *mp, struct g_provider *pp,
    const struct g_cache_metadata *md, u_int type)
{
	struct g_cache_softc *sc;
	struct g_geom *gp;
	struct g_provider *newpp;
	struct g_consumer *cp;
	u_int bshift;
	int i;

	FUNC19();

	gp = NULL;
	newpp = NULL;
	cp = NULL;

	FUNC1(1, "Creating device %s.", md->md_name);

	/* Cache size is minimum 100. */
	if (md->md_size < 100) {
		FUNC1(0, "Invalid size for device %s.", md->md_name);
		return (NULL);
	}

	/* Block size restrictions. */
	bshift = FUNC7(md->md_bsize) - 1;
	if (md->md_bsize == 0 || md->md_bsize > MAXPHYS ||
	    md->md_bsize != 1 << bshift ||
	    (md->md_bsize % pp->sectorsize) != 0) {
		FUNC1(0, "Invalid blocksize for provider %s.", pp->name);
		return (NULL);
	}

	/* Check for duplicate unit. */
	if (FUNC9(mp, (const char *)&md->md_name) != NULL) {
		FUNC1(0, "Provider %s already exists.", md->md_name);
		return (NULL);
	}

	gp = FUNC17(mp, "%s", md->md_name);
	sc = FUNC15(sizeof(*sc), M_WAITOK | M_ZERO);
	sc->sc_type = type;
	sc->sc_bshift = bshift;
	sc->sc_bsize = 1 << bshift;
	sc->sc_zone = FUNC22("gcache", sc->sc_bsize, NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	FUNC21(&sc->sc_mtx, "GEOM CACHE mutex", NULL, MTX_DEF);
	for (i = 0; i < G_CACHE_BUCKETS; i++)
		FUNC2(&sc->sc_desclist[i]);
	FUNC4(&sc->sc_usedlist);
	sc->sc_maxent = md->md_size;
	FUNC5(&sc->sc_callout, &sc->sc_mtx, 0);
	gp->softc = sc;
	sc->sc_geom = gp;
	gp->start = g_cache_start;
	gp->orphan = g_cache_orphan;
	gp->access = g_cache_access;
	gp->dumpconf = g_cache_dumpconf;

	newpp = FUNC18(gp, "cache/%s", gp->name);
	newpp->sectorsize = pp->sectorsize;
	newpp->mediasize = pp->mediasize;
	if (type == G_CACHE_TYPE_AUTOMATIC)
		newpp->mediasize -= pp->sectorsize;
	sc->sc_tail = FUNC0(FUNC3(newpp->mediasize, sc), sc);

	cp = FUNC16(gp);
	if (FUNC8(cp, pp) != 0) {
		FUNC1(0, "Cannot attach to provider %s.", pp->name);
		FUNC10(cp);
		FUNC12(newpp);
		FUNC20(&sc->sc_mtx);
		FUNC14(sc);
		FUNC11(gp);
		return (NULL);
	}

	FUNC13(newpp, 0);
	FUNC1(0, "Device %s created.", gp->name);
	FUNC6(&sc->sc_callout, g_cache_timeout * hz, g_cache_go, sc);
	return (gp);
}