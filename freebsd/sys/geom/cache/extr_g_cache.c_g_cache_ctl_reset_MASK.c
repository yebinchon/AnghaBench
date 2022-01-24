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
struct gctl_req {int dummy; } ;
struct g_class {int dummy; } ;
struct g_cache_softc {scalar_t__ sc_wrotebytes; scalar_t__ sc_writes; scalar_t__ sc_cachefull; scalar_t__ sc_cachemisses; scalar_t__ sc_cachehits; scalar_t__ sc_cachereadbytes; scalar_t__ sc_cachereads; scalar_t__ sc_readbytes; scalar_t__ sc_reads; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 struct g_cache_softc* FUNC1 (struct g_class*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 
 int* FUNC5 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct gctl_req *req, struct g_class *mp)
{
	struct g_cache_softc *sc;
	const char *name;
	char param[16];
	int i, *nargs;

	FUNC2();

	nargs = FUNC5(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC3(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs <= 0) {
		FUNC3(req, "Missing device(s).");
		return;
	}

	for (i = 0; i < *nargs; i++) {
		FUNC6(param, sizeof(param), "arg%d", i);
		name = FUNC4(req, param);
		if (name == NULL) {
			FUNC3(req, "No 'arg%d' argument", i);
			return;
		}
		sc = FUNC1(mp, name);
		if (sc == NULL) {
			FUNC0(1, "Device %s is invalid.", name);
			FUNC3(req, "Device %s is invalid.", name);
			return;
		}
		sc->sc_reads = 0;
		sc->sc_readbytes = 0;
		sc->sc_cachereads = 0;
		sc->sc_cachereadbytes = 0;
		sc->sc_cachehits = 0;
		sc->sc_cachemisses = 0;
		sc->sc_cachefull = 0;
		sc->sc_writes = 0;
		sc->sc_wrotebytes = 0;
	}
}