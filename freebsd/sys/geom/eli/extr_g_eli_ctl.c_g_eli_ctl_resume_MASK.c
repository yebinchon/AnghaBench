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
typedef  int /*<<< orphan*/  u_int ;
struct g_eli_metadata {int md_keys; } ;
typedef  struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {char const* name; } ;
struct g_eli_softc {int sc_flags; int /*<<< orphan*/  sc_queue_mtx; TYPE_1__* sc_geom; } ;
struct g_consumer {struct g_provider* provider; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  mkey ;
typedef  int /*<<< orphan*/  md ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int G_ELI_DATAIVKEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 int G_ELI_FLAG_SUSPEND ; 
 int G_ELI_USERKEYLEN ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct g_eli_metadata*,int) ; 
 struct g_eli_softc* FUNC3 (struct g_class*,char const*) ; 
 int FUNC4 (struct g_eli_metadata*,struct g_eli_metadata*,struct g_eli_metadata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct g_eli_softc*,struct g_eli_metadata*) ; 
 int FUNC6 (struct g_class*,struct g_provider*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,...) ; 
 char* FUNC9 (struct gctl_req*,char*) ; 
 struct g_eli_metadata* FUNC10 (struct gctl_req*,char*,int*) ; 
 int* FUNC11 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct g_eli_softc*) ; 

__attribute__((used)) static void
FUNC15(struct gctl_req *req, struct g_class *mp)
{
	struct g_eli_metadata md;
	struct g_eli_softc *sc;
	struct g_provider *pp;
	struct g_consumer *cp;
	const char *name;
	u_char *key, mkey[G_ELI_DATAIVKEYLEN];
	int *nargs, keysize, error;
	u_int nkey;

	FUNC7();

	nargs = FUNC11(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC8(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs != 1) {
		FUNC8(req, "Invalid number of arguments.");
		return;
	}

	name = FUNC9(req, "arg0");
	if (name == NULL) {
		FUNC8(req, "No 'arg%u' argument.", 0);
		return;
	}
	key = FUNC10(req, "key", &keysize);
	if (key == NULL || keysize != G_ELI_USERKEYLEN) {
		FUNC8(req, "No '%s' argument.", "key");
		return;
	}
	sc = FUNC3(mp, name);
	if (sc == NULL) {
		FUNC8(req, "Provider %s is invalid.", name);
		return;
	}
	cp = FUNC1(&sc->sc_geom->consumer);
	pp = cp->provider;
	error = FUNC6(mp, pp, &md);
	if (error != 0) {
		FUNC8(req, "Cannot read metadata from %s (error=%d).",
		    name, error);
		return;
	}
	if (md.md_keys == 0x00) {
		FUNC2(&md, sizeof(md));
		FUNC8(req, "No valid keys on %s.", pp->name);
		return;
	}

	error = FUNC4(&md, key, mkey, &nkey);
	FUNC2(key, keysize);
	if (error == -1) {
		FUNC2(&md, sizeof(md));
		FUNC8(req, "Wrong key for %s.", pp->name);
		return;
	} else if (error > 0) {
		FUNC2(&md, sizeof(md));
		FUNC8(req, "Cannot decrypt Master Key for %s (error=%d).",
		    pp->name, error);
		return;
	}
	FUNC0(1, "Using Master Key %u for %s.", nkey, pp->name);

	FUNC12(&sc->sc_queue_mtx);
	if (!(sc->sc_flags & G_ELI_FLAG_SUSPEND))
		FUNC8(req, "Device %s is not suspended.", name);
	else {
		/* Restore sc_mkey, sc_ekeys, sc_akey and sc_ivkey. */
		FUNC5(sc, mkey);
		sc->sc_flags &= ~G_ELI_FLAG_SUSPEND;
		FUNC0(1, "Resumed %s.", pp->name);
		FUNC14(sc);
	}
	FUNC13(&sc->sc_queue_mtx);
	FUNC2(mkey, sizeof(mkey));
	FUNC2(&md, sizeof(md));
}