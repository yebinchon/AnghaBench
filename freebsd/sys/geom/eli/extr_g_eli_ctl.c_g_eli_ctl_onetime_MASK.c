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
struct g_eli_metadata {scalar_t__ md_ealgo; scalar_t__ md_aalgo; scalar_t__ md_keylen; int md_keys; int md_sectorsize; struct g_eli_metadata* md_hash; struct g_eli_metadata* md_salt; scalar_t__ md_provsize; int /*<<< orphan*/  md_flags; int /*<<< orphan*/  md_version; int /*<<< orphan*/  md_magic; } ;
typedef  struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {int sectorsize; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  mkey ;
typedef  int /*<<< orphan*/  md ;
typedef  int intmax_t ;

/* Variables and functions */
 scalar_t__ CRYPTO_ALGORITHM_MAX ; 
 scalar_t__ CRYPTO_ALGORITHM_MIN ; 
 int G_ELI_DATAIVKEYLEN ; 
 int /*<<< orphan*/  G_ELI_FLAG_AUTH ; 
 int /*<<< orphan*/  G_ELI_FLAG_AUTORESIZE ; 
 int /*<<< orphan*/  G_ELI_FLAG_NODELETE ; 
 int /*<<< orphan*/  G_ELI_FLAG_ONETIME ; 
 int /*<<< orphan*/  G_ELI_FLAG_WO_DETACH ; 
 int /*<<< orphan*/  G_ELI_MAGIC ; 
 int /*<<< orphan*/  G_ELI_VERSION ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct g_eli_metadata*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,struct g_class*,struct g_provider*,struct g_eli_metadata*,struct g_eli_metadata*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 void* FUNC6 (char const*) ; 
 struct g_provider* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct gctl_req*,char*,...) ; 
 char* FUNC10 (struct gctl_req*,char*) ; 
 void* FUNC11 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct gctl_req *req, struct g_class *mp)
{
	struct g_eli_metadata md;
	struct g_provider *pp;
	const char *name;
	intmax_t *keylen, *sectorsize;
	u_char mkey[G_ELI_DATAIVKEYLEN];
	int *nargs, *detach, *noautoresize, *notrim;

	FUNC8();
	FUNC1(&md, sizeof(md));

	nargs = FUNC11(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC9(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs != 1) {
		FUNC9(req, "Invalid number of arguments.");
		return;
	}

	FUNC12(md.md_magic, G_ELI_MAGIC, sizeof(md.md_magic));
	md.md_version = G_ELI_VERSION;
	md.md_flags |= G_ELI_FLAG_ONETIME;
	md.md_flags |= G_ELI_FLAG_AUTORESIZE;

	detach = FUNC11(req, "detach", sizeof(*detach));
	if (detach != NULL && *detach)
		md.md_flags |= G_ELI_FLAG_WO_DETACH;
	noautoresize = FUNC11(req, "noautoresize",
	    sizeof(*noautoresize));
	if (noautoresize != NULL && *noautoresize)
		md.md_flags &= ~G_ELI_FLAG_AUTORESIZE;
	notrim = FUNC11(req, "notrim", sizeof(*notrim));
	if (notrim != NULL && *notrim)
		md.md_flags |= G_ELI_FLAG_NODELETE;

	md.md_ealgo = CRYPTO_ALGORITHM_MIN - 1;
	name = FUNC10(req, "aalgo");
	if (name == NULL) {
		FUNC9(req, "No '%s' argument.", "aalgo");
		return;
	}
	if (*name != '\0') {
		md.md_aalgo = FUNC5(name);
		if (md.md_aalgo >= CRYPTO_ALGORITHM_MIN &&
		    md.md_aalgo <= CRYPTO_ALGORITHM_MAX) {
			md.md_flags |= G_ELI_FLAG_AUTH;
		} else {
			/*
			 * For backward compatibility, check if the -a option
			 * was used to provide encryption algorithm.
			 */
			md.md_ealgo = FUNC6(name);
			if (md.md_ealgo < CRYPTO_ALGORITHM_MIN ||
			    md.md_ealgo > CRYPTO_ALGORITHM_MAX) {
				FUNC9(req,
				    "Invalid authentication algorithm.");
				return;
			} else {
				FUNC9(req, "warning: The -e option, not "
				    "the -a option is now used to specify "
				    "encryption algorithm to use.");
			}
		}
	}

	if (md.md_ealgo < CRYPTO_ALGORITHM_MIN ||
	    md.md_ealgo > CRYPTO_ALGORITHM_MAX) {
		name = FUNC10(req, "ealgo");
		if (name == NULL) {
			FUNC9(req, "No '%s' argument.", "ealgo");
			return;
		}
		md.md_ealgo = FUNC6(name);
		if (md.md_ealgo < CRYPTO_ALGORITHM_MIN ||
		    md.md_ealgo > CRYPTO_ALGORITHM_MAX) {
			FUNC9(req, "Invalid encryption algorithm.");
			return;
		}
	}

	keylen = FUNC11(req, "keylen", sizeof(*keylen));
	if (keylen == NULL) {
		FUNC9(req, "No '%s' argument.", "keylen");
		return;
	}
	md.md_keylen = FUNC4(md.md_ealgo, *keylen);
	if (md.md_keylen == 0) {
		FUNC9(req, "Invalid '%s' argument.", "keylen");
		return;
	}

	/* Not important here. */
	md.md_provsize = 0;
	/* Not important here. */
	FUNC1(md.md_salt, sizeof(md.md_salt));

	md.md_keys = 0x01;
	FUNC0(mkey, sizeof(mkey), 0);

	/* Not important here. */
	FUNC1(md.md_hash, sizeof(md.md_hash));

	name = FUNC10(req, "arg0");
	if (name == NULL) {
		FUNC9(req, "No 'arg%u' argument.", 0);
		return;
	}
	if (FUNC14(name, "/dev/", FUNC13("/dev/")) == 0)
		name += FUNC13("/dev/");
	pp = FUNC7(name);
	if (pp == NULL) {
		FUNC9(req, "Provider %s is invalid.", name);
		return;
	}

	sectorsize = FUNC11(req, "sectorsize", sizeof(*sectorsize));
	if (sectorsize == NULL) {
		FUNC9(req, "No '%s' argument.", "sectorsize");
		return;
	}
	if (*sectorsize == 0)
		md.md_sectorsize = pp->sectorsize;
	else {
		if (*sectorsize < 0 || (*sectorsize % pp->sectorsize) != 0) {
			FUNC9(req, "Invalid sector size.");
			return;
		}
		if (*sectorsize > PAGE_SIZE) {
			FUNC9(req, "warning: Using sectorsize bigger than "
			    "the page size!");
		}
		md.md_sectorsize = *sectorsize;
	}

	FUNC3(req, mp, pp, &md, mkey, -1);
	FUNC2(mkey, sizeof(mkey));
	FUNC2(&md, sizeof(md));
}