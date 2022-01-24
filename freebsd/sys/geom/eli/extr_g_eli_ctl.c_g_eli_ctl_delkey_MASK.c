#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct g_eli_metadata {int md_keys; struct g_eli_metadata* md_mkeys; } ;
typedef  struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {int sectorsize; int name; scalar_t__ mediasize; } ;
struct g_eli_softc {int sc_flags; int sc_nkey; TYPE_1__* sc_geom; } ;
struct g_consumer {struct g_provider* provider; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  md ;
typedef  int intmax_t ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int G_ELI_FLAG_RO ; 
 int G_ELI_MAXMKEYS ; 
 int G_ELI_MKEYLEN ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_ELI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct g_eli_metadata*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_eli_metadata*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct g_eli_metadata*,int /*<<< orphan*/ ) ; 
 struct g_eli_softc* FUNC6 (struct g_class*,char const*) ; 
 scalar_t__ g_eli_overwrites ; 
 int FUNC7 (struct g_class*,struct g_provider*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct g_consumer*,scalar_t__,struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gctl_req*,char*,...) ; 
 char* FUNC12 (struct gctl_req*,char*) ; 
 int* FUNC13 (struct gctl_req*,char*,int) ; 
 struct g_eli_metadata* FUNC14 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC15(struct gctl_req *req, struct g_class *mp)
{
	struct g_eli_softc *sc;
	struct g_eli_metadata md;
	struct g_provider *pp;
	struct g_consumer *cp;
	const char *name;
	u_char *mkeydst, *sector;
	intmax_t *valp;
	size_t keysize;
	int error, nkey, *all, *force;
	u_int i;

	FUNC9();

	nkey = 0;	/* fixes causeless gcc warning */

	name = FUNC12(req, "arg0");
	if (name == NULL) {
		FUNC11(req, "No 'arg%u' argument.", 0);
		return;
	}
	sc = FUNC6(mp, name);
	if (sc == NULL) {
		FUNC11(req, "Provider %s is invalid.", name);
		return;
	}
	if (sc->sc_flags & G_ELI_FLAG_RO) {
		FUNC11(req, "Cannot delete keys for read-only provider.");
		return;
	}
	cp = FUNC1(&sc->sc_geom->consumer);
	pp = cp->provider;

	error = FUNC7(mp, pp, &md);
	if (error != 0) {
		FUNC11(req, "Cannot read metadata from %s (error=%d).",
		    name, error);
		return;
	}

	all = FUNC13(req, "all", sizeof(*all));
	if (all == NULL) {
		FUNC11(req, "No '%s' argument.", "all");
		return;
	}

	if (*all) {
		mkeydst = md.md_mkeys;
		keysize = sizeof(md.md_mkeys);
	} else {
		force = FUNC13(req, "force", sizeof(*force));
		if (force == NULL) {
			FUNC11(req, "No '%s' argument.", "force");
			return;
		}

		valp = FUNC13(req, "keyno", sizeof(*valp));
		if (valp == NULL) {
			FUNC11(req, "No '%s' argument.", "keyno");
			return;
		}
		if (*valp != -1)
			nkey = *valp;
		else
			nkey = sc->sc_nkey;
		if (nkey < 0 || nkey >= G_ELI_MAXMKEYS) {
			FUNC11(req, "Invalid '%s' argument.", "keyno");
			return;
		}
		if (!(md.md_keys & (1 << nkey)) && !*force) {
			FUNC11(req, "Master Key %u is not set.", nkey);
			return;
		}
		md.md_keys &= ~(1 << nkey);
		if (md.md_keys == 0 && !*force) {
			FUNC11(req, "This is the last Master Key. Use '-f' "
			    "flag if you really want to remove it.");
			return;
		}
		mkeydst = md.md_mkeys + nkey * G_ELI_MKEYLEN;
		keysize = G_ELI_MKEYLEN;
	}

	sector = FUNC14(pp->sectorsize, M_ELI, M_WAITOK | M_ZERO);
	for (i = 0; i <= g_eli_overwrites; i++) {
		if (i == g_eli_overwrites)
			FUNC4(mkeydst, keysize);
		else
			FUNC2(mkeydst, keysize, 0);
		/* Store metadata with destroyed key. */
		FUNC3(&md, sector);
		error = FUNC10(cp, pp->mediasize - pp->sectorsize, sector,
		    pp->sectorsize);
		if (error != 0) {
			FUNC0(0, "Cannot store metadata on %s "
			    "(error=%d).", pp->name, error);
		}
		/*
		 * Flush write cache so we don't overwrite data N times in cache
		 * and only once on disk.
		 */
		(void)FUNC8(cp);
	}
	FUNC4(&md, sizeof(md));
	FUNC4(sector, pp->sectorsize);
	FUNC5(sector, M_ELI);
	if (*all)
		FUNC0(1, "All keys removed from %s.", pp->name);
	else
		FUNC0(1, "Key %d removed from %s.", nkey, pp->name);
}