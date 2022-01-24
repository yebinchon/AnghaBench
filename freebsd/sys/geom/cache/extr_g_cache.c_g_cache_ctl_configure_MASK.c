#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct gctl_req {int dummy; } ;
struct g_consumer {TYPE_2__* provider; } ;
struct g_class {int dummy; } ;
struct g_cache_softc {scalar_t__ sc_type; TYPE_1__* sc_geom; scalar_t__ sc_bsize; scalar_t__ sc_maxent; } ;
struct g_cache_metadata {int /*<<< orphan*/  md_provsize; scalar_t__ md_bsize; scalar_t__ md_size; int /*<<< orphan*/  md_version; int /*<<< orphan*/  md_magic; int /*<<< orphan*/  md_name; } ;
typedef  scalar_t__ intmax_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  mediasize; } ;
struct TYPE_3__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 char const* G_CACHE_MAGIC ; 
 scalar_t__ G_CACHE_TYPE_AUTOMATIC ; 
 int /*<<< orphan*/  G_CACHE_VERSION ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 struct g_cache_softc* FUNC2 (struct g_class*,char const*) ; 
 int FUNC3 (struct g_consumer*,struct g_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,...) ; 
 char* FUNC6 (struct gctl_req*,char*) ; 
 void* FUNC7 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req, struct g_class *mp)
{
	struct g_cache_metadata md;
	struct g_cache_softc *sc;
	struct g_consumer *cp;
	intmax_t *bsize, *size;
	const char *name;
	int error, *nargs;

	FUNC4();

	nargs = FUNC7(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC5(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs != 1) {
		FUNC5(req, "Missing device.");
		return;
	}

	name = FUNC6(req, "arg0");
	if (name == NULL) {
		FUNC5(req, "No 'arg0' argument");
		return;
	}
	sc = FUNC2(mp, name);
	if (sc == NULL) {
		FUNC0(1, "Device %s is invalid.", name);
		FUNC5(req, "Device %s is invalid.", name);
		return;
	}

	size = FUNC7(req, "size", sizeof(*size));
	if (size == NULL) {
		FUNC5(req, "No '%s' argument", "size");
		return;
	}
	if ((u_int)*size != 0 && (u_int)*size < 100) {
		FUNC5(req, "Invalid '%s' argument", "size");
		return;
	}
	if ((u_int)*size != 0)
		sc->sc_maxent = (u_int)*size;

	bsize = FUNC7(req, "blocksize", sizeof(*bsize));
	if (bsize == NULL) {
		FUNC5(req, "No '%s' argument", "blocksize");
		return;
	}
	if (*bsize < 0) {
		FUNC5(req, "Invalid '%s' argument", "blocksize");
		return;
	}

	if (sc->sc_type != G_CACHE_TYPE_AUTOMATIC)
		return;

	FUNC8(md.md_name, name, sizeof(md.md_name));
	FUNC8(md.md_magic, G_CACHE_MAGIC, sizeof(md.md_magic));
	md.md_version = G_CACHE_VERSION;
	if ((u_int)*size != 0)
		md.md_size = (u_int)*size;
	else
		md.md_size = sc->sc_maxent;
	if ((u_int)*bsize != 0)
		md.md_bsize = (u_int)*bsize;
	else
		md.md_bsize = sc->sc_bsize;
	cp = FUNC1(&sc->sc_geom->consumer);
	md.md_provsize = cp->provider->mediasize;
	error = FUNC3(cp, &md);
	if (error == 0)
		FUNC0(2, "Metadata on %s updated.", cp->provider->name);
	else
		FUNC0(0, "Cannot update metadata on %s (error=%d).",
		    cp->provider->name, error);
}