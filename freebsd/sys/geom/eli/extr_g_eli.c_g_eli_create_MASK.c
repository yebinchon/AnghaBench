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
typedef  int /*<<< orphan*/  u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {char* name; int /*<<< orphan*/  sectorsize; int /*<<< orphan*/  mediasize; } ;
struct g_geom {struct g_eli_worker* softc; int /*<<< orphan*/  access; int /*<<< orphan*/  dumpconf; int /*<<< orphan*/  resize; void* orphan; void* spoiled; int /*<<< orphan*/  start; } ;
struct g_eli_worker {int sc_nkey; int sc_flags; int sc_cpubind; int w_number; int sc_ealgo; int sc_aalgo; scalar_t__ sc_crypto; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_workers; int /*<<< orphan*/  sc_ekeylen; int /*<<< orphan*/  sc_sectorsize; int /*<<< orphan*/  sc_mediasize; int /*<<< orphan*/  w_proc; int /*<<< orphan*/  w_active; struct g_eli_worker* w_softc; int /*<<< orphan*/  sc_ekeys_lock; int /*<<< orphan*/  sc_queue; struct g_geom* sc_geom; } ;
struct g_eli_softc {int sc_nkey; int sc_flags; int sc_cpubind; int w_number; int sc_ealgo; int sc_aalgo; scalar_t__ sc_crypto; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_workers; int /*<<< orphan*/  sc_ekeylen; int /*<<< orphan*/  sc_sectorsize; int /*<<< orphan*/  sc_mediasize; int /*<<< orphan*/  w_proc; int /*<<< orphan*/  w_active; struct g_eli_softc* w_softc; int /*<<< orphan*/  sc_ekeys_lock; int /*<<< orphan*/  sc_queue; struct g_geom* sc_geom; } ;
struct g_eli_metadata {int md_flags; } ;
struct g_consumer {int acr; int /*<<< orphan*/ * provider; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
#define  CRYPTO_3DES_CBC 130 
#define  CRYPTO_BLF_CBC 129 
#define  CRYPTO_MD5_HMAC 128 
 scalar_t__ G_ELI_CRYPTO_SW ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int G_ELI_FLAG_AUTH ; 
 int G_ELI_FLAG_DESTROY ; 
 int G_ELI_FLAG_RO ; 
 int G_ELI_FLAG_WO_DETACH ; 
 int /*<<< orphan*/  G_ELI_SUFFIX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct g_eli_worker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_ELI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct g_eli_worker*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct g_eli_worker*,struct g_eli_metadata const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g_eli_worker*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct g_consumer*,int,int,int) ; 
 int FUNC9 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC11 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC12 (struct g_consumer*) ; 
 int /*<<< orphan*/  g_eli_access ; 
 char* FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  g_eli_dumpconf ; 
 int /*<<< orphan*/  FUNC15 (struct g_eli_worker*) ; 
 int /*<<< orphan*/  FUNC16 (struct g_eli_worker*) ; 
 int /*<<< orphan*/  FUNC17 (struct g_eli_worker*,int /*<<< orphan*/  const*) ; 
 int FUNC18 (struct g_eli_worker*) ; 
 void* g_eli_orphan ; 
 int /*<<< orphan*/  g_eli_resize ; 
 int /*<<< orphan*/  g_eli_start ; 
 int g_eli_threads ; 
 int /*<<< orphan*/  g_eli_worker ; 
 int /*<<< orphan*/  FUNC19 (struct g_provider*,int /*<<< orphan*/ ) ; 
 struct g_consumer* FUNC20 (struct g_geom*) ; 
 struct g_geom* FUNC21 (struct g_class*,char*,char*,int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC22 (struct g_geom*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_std_access ; 
 int /*<<< orphan*/  FUNC23 (struct gctl_req*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int,char*) ; 
 int FUNC25 (int /*<<< orphan*/ ,struct g_eli_worker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*) ; 
 struct g_eli_worker* FUNC26 (int,int /*<<< orphan*/ ,int) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w_next ; 
 int /*<<< orphan*/  FUNC31 (struct g_eli_worker*) ; 

struct g_geom *
FUNC32(struct gctl_req *req, struct g_class *mp, struct g_provider *bpp,
    const struct g_eli_metadata *md, const u_char *mkey, int nkey)
{
	struct g_eli_softc *sc;
	struct g_eli_worker *wr;
	struct g_geom *gp;
	struct g_provider *pp;
	struct g_consumer *cp;
	u_int i, threads;
	int dcw, error;

	FUNC0(1, "Creating device %s%s.", bpp->name, G_ELI_SUFFIX);

	gp = FUNC21(mp, "%s%s", bpp->name, G_ELI_SUFFIX);
	sc = FUNC26(sizeof(*sc), M_ELI, M_WAITOK | M_ZERO);
	gp->start = g_eli_start;
	/*
	 * Spoiling can happen even though we have the provider open
	 * exclusively, e.g. through media change events.
	 */
	gp->spoiled = g_eli_orphan;
	gp->orphan = g_eli_orphan;
	gp->resize = g_eli_resize;
	gp->dumpconf = g_eli_dumpconf;
	/*
	 * If detach-on-last-close feature is not enabled and we don't operate
	 * on read-only provider, we can simply use g_std_access().
	 */
	if (md->md_flags & (G_ELI_FLAG_WO_DETACH | G_ELI_FLAG_RO))
		gp->access = g_eli_access;
	else
		gp->access = g_std_access;

	FUNC6(sc, md, bpp->sectorsize, bpp->mediasize);
	sc->sc_nkey = nkey;

	gp->softc = sc;
	sc->sc_geom = gp;

	FUNC4(&sc->sc_queue);
	FUNC29(&sc->sc_queue_mtx, "geli:queue", NULL, MTX_DEF);
	FUNC29(&sc->sc_ekeys_lock, "geli:ekeys", NULL, MTX_DEF);

	pp = NULL;
	cp = FUNC20(gp);
	error = FUNC9(cp, bpp);
	if (error != 0) {
		if (req != NULL) {
			FUNC23(req, "Cannot attach to %s (error=%d).",
			    bpp->name, error);
		} else {
			FUNC0(1, "Cannot attach to %s (error=%d).",
			    bpp->name, error);
		}
		goto failed;
	}
	/*
	 * Keep provider open all the time, so we can run critical tasks,
	 * like Master Keys deletion, without wondering if we can open
	 * provider or not.
	 * We don't open provider for writing only when user requested read-only
	 * access.
	 */
	dcw = (sc->sc_flags & G_ELI_FLAG_RO) ? 0 : 1;
	error = FUNC8(cp, 1, dcw, 1);
	if (error != 0) {
		if (req != NULL) {
			FUNC23(req, "Cannot access %s (error=%d).",
			    bpp->name, error);
		} else {
			FUNC0(1, "Cannot access %s (error=%d).",
			    bpp->name, error);
		}
		goto failed;
	}

	/*
	 * Remember the keys in our softc structure.
	 */
	FUNC17(sc, mkey);

	FUNC2(&sc->sc_workers);

	threads = g_eli_threads;
	if (threads == 0)
		threads = mp_ncpus;
	sc->sc_cpubind = (mp_ncpus > 1 && threads == mp_ncpus);
	for (i = 0; i < threads; i++) {
		if (FUNC14(i)) {
			FUNC0(1, "%s: CPU %u disabled, skipping.",
			    bpp->name, i);
			continue;
		}
		wr = FUNC26(sizeof(*wr), M_ELI, M_WAITOK | M_ZERO);
		wr->w_softc = sc;
		wr->w_number = i;
		wr->w_active = TRUE;

		error = FUNC18(wr);
		if (error != 0) {
			FUNC7(wr, M_ELI);
			if (req != NULL) {
				FUNC23(req, "Cannot set up crypto session "
				    "for %s (error=%d).", bpp->name, error);
			} else {
				FUNC0(1, "Cannot set up crypto session "
				    "for %s (error=%d).", bpp->name, error);
			}
			goto failed;
		}

		error = FUNC25(g_eli_worker, wr, &wr->w_proc, 0, 0,
		    "g_eli[%u] %s", i, bpp->name);
		if (error != 0) {
			FUNC15(wr);
			FUNC7(wr, M_ELI);
			if (req != NULL) {
				FUNC23(req, "Cannot create kernel thread "
				    "for %s (error=%d).", bpp->name, error);
			} else {
				FUNC0(1, "Cannot create kernel thread "
				    "for %s (error=%d).", bpp->name, error);
			}
			goto failed;
		}
		FUNC3(&sc->sc_workers, wr, w_next);
	}

	/*
	 * Create decrypted provider.
	 */
	pp = FUNC22(gp, "%s%s", bpp->name, G_ELI_SUFFIX);
	pp->mediasize = sc->sc_mediasize;
	pp->sectorsize = sc->sc_sectorsize;

	FUNC19(pp, 0);

	FUNC0(0, "Device %s created.", pp->name);
	FUNC0(0, "Encryption: %s %u", FUNC13(sc->sc_ealgo),
	    sc->sc_ekeylen);
	switch (sc->sc_ealgo) {
	case CRYPTO_3DES_CBC:
		FUNC24(13,
		    "support for GEOM_ELI volumes encrypted with 3des");
		break;
	case CRYPTO_BLF_CBC:
		FUNC24(13,
		    "support for GEOM_ELI volumes encrypted with blowfish");
		break;
	}
	if (sc->sc_flags & G_ELI_FLAG_AUTH) {
		FUNC0(0, " Integrity: %s", FUNC13(sc->sc_aalgo));
		switch (sc->sc_aalgo) {
		case CRYPTO_MD5_HMAC:
			FUNC24(13,
		    "support for GEOM_ELI volumes authenticated with hmac/md5");
			break;
		}
	}
	FUNC0(0, "    Crypto: %s",
	    sc->sc_crypto == G_ELI_CRYPTO_SW ? "software" : "hardware");
	return (gp);
failed:
	FUNC30(&sc->sc_queue_mtx);
	sc->sc_flags |= G_ELI_FLAG_DESTROY;
	FUNC31(sc);
	/*
	 * Wait for kernel threads self destruction.
	 */
	while (!FUNC1(&sc->sc_workers)) {
		FUNC27(&sc->sc_workers, &sc->sc_queue_mtx, PRIBIO,
		    "geli:destroy", 0);
	}
	FUNC28(&sc->sc_queue_mtx);
	if (cp->provider != NULL) {
		if (cp->acr == 1)
			FUNC8(cp, -1, -dcw, -1);
		FUNC12(cp);
	}
	FUNC10(cp);
	FUNC11(gp);
	FUNC16(sc);
	FUNC5(sc, sizeof(*sc));
	FUNC7(sc, M_ELI);
	return (NULL);
}