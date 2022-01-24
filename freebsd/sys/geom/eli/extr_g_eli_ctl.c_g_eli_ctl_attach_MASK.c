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
struct g_eli_metadata {int md_keys; int /*<<< orphan*/  md_flags; } ;
typedef  struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {char const* name; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  mkey ;
typedef  int /*<<< orphan*/  md ;
typedef  int intmax_t ;

/* Variables and functions */
 int G_ELI_DATAIVKEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,char const*) ; 
 int /*<<< orphan*/  G_ELI_FLAG_RO ; 
 int /*<<< orphan*/  G_ELI_FLAG_WO_DETACH ; 
 int G_ELI_MAXMKEYS ; 
 int G_ELI_USERKEYLEN ; 
 int /*<<< orphan*/  FUNC1 (struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,struct g_class*,struct g_provider*,struct g_eli_metadata*,struct g_eli_metadata*,int) ; 
 int FUNC3 (struct g_eli_metadata*,struct g_eli_metadata*,struct g_eli_metadata*,int) ; 
 int FUNC4 (struct g_eli_metadata*,struct g_eli_metadata*,struct g_eli_metadata*,int*) ; 
 int FUNC5 (struct g_class*,struct g_provider*,struct g_eli_metadata*) ; 
 struct g_provider* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,...) ; 
 char* FUNC9 (struct gctl_req*,char*) ; 
 void* FUNC10 (struct gctl_req*,char*,int*) ; 
 void* FUNC11 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct gctl_req *req, struct g_class *mp)
{
	struct g_eli_metadata md;
	struct g_provider *pp;
	const char *name;
	u_char *key, mkey[G_ELI_DATAIVKEYLEN];
	int *nargs, *detach, *readonly, *dryrunp;
	int keysize, error, nkey, dryrun, dummy;
	intmax_t *valp;

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

	detach = FUNC11(req, "detach", sizeof(*detach));
	if (detach == NULL) {
		FUNC8(req, "No '%s' argument.", "detach");
		return;
	}

	/* "keyno" is optional for backward compatibility */
	nkey = -1;
	valp = FUNC10(req, "keyno", &dummy);
	if (valp != NULL) {
		valp = FUNC11(req, "keyno", sizeof(*valp));
		if (valp != NULL)
			nkey = *valp;
	}
	if (nkey < -1 || nkey >= G_ELI_MAXMKEYS) {
		FUNC8(req, "Invalid '%s' argument.", "keyno");
		return;
	}

	readonly = FUNC11(req, "readonly", sizeof(*readonly));
	if (readonly == NULL) {
		FUNC8(req, "No '%s' argument.", "readonly");
		return;
	}

	/* "dryrun" is optional for backward compatibility */
	dryrun = 0;
	dryrunp = FUNC10(req, "dryrun", &dummy);
	if (dryrunp != NULL) {
		dryrunp = FUNC11(req, "dryrun", sizeof(*dryrunp));
		if (dryrunp != NULL)
			dryrun = *dryrunp;
	}

	if (*detach && *readonly) {
		FUNC8(req, "Options -d and -r are mutually exclusive.");
		return;
	}

	name = FUNC9(req, "arg0");
	if (name == NULL) {
		FUNC8(req, "No 'arg%u' argument.", 0);
		return;
	}
	if (FUNC13(name, "/dev/", FUNC12("/dev/")) == 0)
		name += FUNC12("/dev/");
	pp = FUNC6(name);
	if (pp == NULL) {
		FUNC8(req, "Provider %s is invalid.", name);
		return;
	}
	error = FUNC5(mp, pp, &md);
	if (error != 0) {
		FUNC8(req, "Cannot read metadata from %s (error=%d).",
		    name, error);
		return;
	}
	if (md.md_keys == 0x00) {
		FUNC1(&md, sizeof(md));
		FUNC8(req, "No valid keys on %s.", pp->name);
		return;
	}

	key = FUNC10(req, "key", &keysize);
	if (key == NULL || keysize != G_ELI_USERKEYLEN) {
		FUNC1(&md, sizeof(md));
		FUNC8(req, "No '%s' argument.", "key");
		return;
	}

	if (nkey == -1)
		error = FUNC4(&md, key, mkey, &nkey);
	else
		error = FUNC3(&md, key, mkey, nkey);
	FUNC1(key, keysize);
	if (error == -1) {
		FUNC1(&md, sizeof(md));
		FUNC8(req, "Wrong key for %s.", pp->name);
		return;
	} else if (error > 0) {
		FUNC1(&md, sizeof(md));
		FUNC8(req, "Cannot decrypt Master Key for %s (error=%d).",
		    pp->name, error);
		return;
	}
	FUNC0(1, "Using Master Key %u for %s.", nkey, pp->name);

	if (*detach)
		md.md_flags |= G_ELI_FLAG_WO_DETACH;
	if (*readonly)
		md.md_flags |= G_ELI_FLAG_RO;
	if (!dryrun)
		FUNC2(req, mp, pp, &md, mkey, nkey);
	FUNC1(mkey, sizeof(mkey));
	FUNC1(&md, sizeof(md));
}