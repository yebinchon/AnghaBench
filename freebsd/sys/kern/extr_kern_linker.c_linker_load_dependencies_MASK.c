#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct mod_version {int mv_version; } ;
struct mod_metadata {scalar_t__ md_type; char* md_cval; struct mod_depend* md_data; } ;
struct mod_depend {int dummy; } ;
typedef  TYPE_1__* modlist_t ;
typedef  TYPE_2__* linker_file_t ;
struct TYPE_13__ {char* filename; int /*<<< orphan*/  refs; } ;
struct TYPE_12__ {TYPE_2__* container; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ MDT_DEPEND ; 
 int /*<<< orphan*/  MDT_SETNAME ; 
 scalar_t__ MDT_VERSION ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  kld_sx ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct mod_metadata**,struct mod_metadata**,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,struct mod_metadata***,struct mod_metadata***,int /*<<< orphan*/ *) ; 
 TYPE_2__* linker_kernel_file ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,TYPE_2__*,struct mod_depend const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (char const*,int) ; 
 TYPE_1__* FUNC5 (char const*,struct mod_depend const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(linker_file_t lf)
{
	linker_file_t lfdep;
	struct mod_metadata **start, **stop, **mdp, **nmdp;
	struct mod_metadata *mp, *nmp;
	const struct mod_depend *verinfo;
	modlist_t mod;
	const char *modname, *nmodname;
	int ver, error = 0;

	/*
	 * All files are dependent on /kernel.
	 */
	FUNC8(&kld_sx, SA_XLOCKED);
	if (linker_kernel_file) {
		linker_kernel_file->refs++;
		error = FUNC1(lf, linker_kernel_file);
		if (error)
			return (error);
	}
	if (FUNC2(lf, MDT_SETNAME, &start, &stop,
	    NULL) != 0)
		return (0);
	for (mdp = start; mdp < stop; mdp++) {
		mp = *mdp;
		if (mp->md_type != MDT_VERSION)
			continue;
		modname = mp->md_cval;
		ver = ((const struct mod_version *)mp->md_data)->mv_version;
		mod = FUNC4(modname, ver);
		if (mod != NULL) {
			FUNC6("interface %s.%d already present in the KLD"
			    " '%s'!\n", modname, ver,
			    mod->container->filename);
			return (EEXIST);
		}
	}

	for (mdp = start; mdp < stop; mdp++) {
		mp = *mdp;
		if (mp->md_type != MDT_DEPEND)
			continue;
		modname = mp->md_cval;
		verinfo = mp->md_data;
		nmodname = NULL;
		for (nmdp = start; nmdp < stop; nmdp++) {
			nmp = *nmdp;
			if (nmp->md_type != MDT_VERSION)
				continue;
			nmodname = nmp->md_cval;
			if (FUNC7(modname, nmodname) == 0)
				break;
		}
		if (nmdp < stop)/* early exit, it's a self reference */
			continue;
		mod = FUNC5(modname, verinfo);
		if (mod) {	/* woohoo, it's loaded already */
			lfdep = mod->container;
			lfdep->refs++;
			error = FUNC1(lf, lfdep);
			if (error)
				break;
			continue;
		}
		error = FUNC3(NULL, modname, lf, verinfo, NULL);
		if (error) {
			FUNC6("KLD %s: depends on %s - not available or"
			    " version mismatch\n", lf->filename, modname);
			break;
		}
	}

	if (error)
		return (error);
	FUNC0(lf, start, stop, 0);
	return (error);
}