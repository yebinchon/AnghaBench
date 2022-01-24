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
struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;
struct g_cache_metadata {char const* md_magic; char const* md_name; int md_size; int md_bsize; scalar_t__ md_provsize; int /*<<< orphan*/  md_version; } ;
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 char const* G_CACHE_MAGIC ; 
 int /*<<< orphan*/  G_CACHE_TYPE_MANUAL ; 
 int /*<<< orphan*/  G_CACHE_VERSION ; 
 struct g_geom* FUNC1 (struct g_class*,struct g_provider*,struct g_cache_metadata*,int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 void* FUNC6 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct gctl_req *req, struct g_class *mp)
{
	struct g_cache_metadata md;
	struct g_provider *pp;
	struct g_geom *gp;
	intmax_t *bsize, *size;
	const char *name;
	int *nargs;

	FUNC3();

	nargs = FUNC6(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC4(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs != 2) {
		FUNC4(req, "Invalid number of arguments.");
		return;
	}

	FUNC7(md.md_magic, G_CACHE_MAGIC, sizeof(md.md_magic));
	md.md_version = G_CACHE_VERSION;
	name = FUNC5(req, "arg0");
	if (name == NULL) {
		FUNC4(req, "No 'arg0' argument");
		return;
	}
	FUNC7(md.md_name, name, sizeof(md.md_name));

	size = FUNC6(req, "size", sizeof(*size));
	if (size == NULL) {
		FUNC4(req, "No '%s' argument", "size");
		return;
	}
	if ((u_int)*size < 100) {
		FUNC4(req, "Invalid '%s' argument", "size");
		return;
	}
	md.md_size = (u_int)*size;

	bsize = FUNC6(req, "blocksize", sizeof(*bsize));
	if (bsize == NULL) {
		FUNC4(req, "No '%s' argument", "blocksize");
		return;
	}
	if (*bsize < 0) {
		FUNC4(req, "Invalid '%s' argument", "blocksize");
		return;
	}
	md.md_bsize = (u_int)*bsize;

	/* This field is not important here. */
	md.md_provsize = 0;

	name = FUNC5(req, "arg1");
	if (name == NULL) {
		FUNC4(req, "No 'arg1' argument");
		return;
	}
	if (FUNC9(name, "/dev/", FUNC8("/dev/")) == 0)
		name += FUNC8("/dev/");
	pp = FUNC2(name);
	if (pp == NULL) {
		FUNC0(1, "Provider %s is invalid.", name);
		FUNC4(req, "Provider %s is invalid.", name);
		return;
	}
	gp = FUNC1(mp, pp, &md, G_CACHE_TYPE_MANUAL);
	if (gp == NULL) {
		FUNC4(req, "Can't create %s.", md.md_name);
		return;
	}
}