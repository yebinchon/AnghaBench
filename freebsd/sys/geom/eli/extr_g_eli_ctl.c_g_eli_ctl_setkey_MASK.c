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
struct g_eli_metadata {int md_iterations; int md_keys; int /*<<< orphan*/  md_keylen; int /*<<< orphan*/  md_ealgo; struct g_eli_metadata* md_mkeys; } ;
typedef  struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {int sectorsize; char const* name; scalar_t__ mediasize; } ;
struct g_eli_softc {int sc_flags; int sc_nkey; int /*<<< orphan*/  sc_mkey; TYPE_1__* sc_geom; } ;
struct g_consumer {struct g_provider* provider; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  md ;
typedef  int intmax_t ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,char const*) ; 
 int G_ELI_FLAG_RO ; 
 int G_ELI_MAXMKEYS ; 
 int G_ELI_MKEYLEN ; 
 int G_ELI_USERKEYLEN ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_ELI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct g_eli_metadata*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct g_eli_metadata*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct g_eli_metadata*,int /*<<< orphan*/ ) ; 
 struct g_eli_softc* FUNC7 (struct g_class*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct g_eli_metadata*,int /*<<< orphan*/ ,struct g_eli_metadata*) ; 
 int FUNC9 (struct g_class*,struct g_provider*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct g_consumer*,scalar_t__,struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gctl_req*,char*,...) ; 
 char* FUNC13 (struct gctl_req*,char*) ; 
 struct g_eli_metadata* FUNC14 (struct gctl_req*,char*,int*) ; 
 int* FUNC15 (struct gctl_req*,char*,int) ; 
 struct g_eli_metadata* FUNC16 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC17(struct gctl_req *req, struct g_class *mp)
{
	struct g_eli_softc *sc;
	struct g_eli_metadata md;
	struct g_provider *pp;
	struct g_consumer *cp;
	const char *name;
	u_char *key, *mkeydst, *sector;
	intmax_t *valp;
	int keysize, nkey, error;

	FUNC10();

	name = FUNC13(req, "arg0");
	if (name == NULL) {
		FUNC12(req, "No 'arg%u' argument.", 0);
		return;
	}
	key = FUNC14(req, "key", &keysize);
	if (key == NULL || keysize != G_ELI_USERKEYLEN) {
		FUNC12(req, "No '%s' argument.", "key");
		return;
	}
	sc = FUNC7(mp, name);
	if (sc == NULL) {
		FUNC12(req, "Provider %s is invalid.", name);
		return;
	}
	if (sc->sc_flags & G_ELI_FLAG_RO) {
		FUNC12(req, "Cannot change keys for read-only provider.");
		return;
	}
	cp = FUNC1(&sc->sc_geom->consumer);
	pp = cp->provider;

	error = FUNC9(mp, pp, &md);
	if (error != 0) {
		FUNC12(req, "Cannot read metadata from %s (error=%d).",
		    name, error);
		return;
	}

	valp = FUNC15(req, "keyno", sizeof(*valp));
	if (valp == NULL) {
		FUNC12(req, "No '%s' argument.", "keyno");
		return;
	}
	if (*valp != -1)
		nkey = *valp;
	else
		nkey = sc->sc_nkey;
	if (nkey < 0 || nkey >= G_ELI_MAXMKEYS) {
		FUNC12(req, "Invalid '%s' argument.", "keyno");
		return;
	}

	valp = FUNC15(req, "iterations", sizeof(*valp));
	if (valp == NULL) {
		FUNC12(req, "No '%s' argument.", "iterations");
		return;
	}
	/* Check if iterations number should and can be changed. */
	if (*valp != -1 && md.md_iterations == -1) {
		md.md_iterations = *valp;
	} else if (*valp != -1 && *valp != md.md_iterations) {
		if (FUNC3(md.md_keys) != 1) {
			FUNC12(req, "To be able to use '-i' option, only "
			    "one key can be defined.");
			return;
		}
		if (md.md_keys != (1 << nkey)) {
			FUNC12(req, "Only already defined key can be "
			    "changed when '-i' option is used.");
			return;
		}
		md.md_iterations = *valp;
	}

	mkeydst = md.md_mkeys + nkey * G_ELI_MKEYLEN;
	md.md_keys |= (1 << nkey);

	FUNC2(sc->sc_mkey, mkeydst, sizeof(sc->sc_mkey));

	/* Encrypt Master Key with the new key. */
	error = FUNC8(md.md_ealgo, key, md.md_keylen, mkeydst);
	FUNC5(key, keysize);
	if (error != 0) {
		FUNC5(&md, sizeof(md));
		FUNC12(req, "Cannot encrypt Master Key (error=%d).", error);
		return;
	}

	sector = FUNC16(pp->sectorsize, M_ELI, M_WAITOK | M_ZERO);
	/* Store metadata with fresh key. */
	FUNC4(&md, sector);
	FUNC5(&md, sizeof(md));
	error = FUNC11(cp, pp->mediasize - pp->sectorsize, sector,
	    pp->sectorsize);
	FUNC5(sector, pp->sectorsize);
	FUNC6(sector, M_ELI);
	if (error != 0) {
		FUNC12(req, "Cannot store metadata on %s (error=%d).",
		    pp->name, error);
		return;
	}
	FUNC0(1, "Key %u changed on %s.", nkey, pp->name);
}