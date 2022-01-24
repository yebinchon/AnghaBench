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
struct mod_depend {int dummy; } ;
struct linker_file {int dummy; } ;
typedef  struct linker_file* linker_file_t ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LINKER_UNLOAD_FORCE ; 
 int /*<<< orphan*/  M_LINKER ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kld_sx ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (struct linker_file*,struct linker_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct linker_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (char*,struct linker_file**) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ,struct mod_depend const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,struct mod_depend const*) ; 
 int /*<<< orphan*/ * rootvnode ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(const char *kldname, const char *modname,
    struct linker_file *parent, const struct mod_depend *verinfo,
    struct linker_file **lfpp)
{
	linker_file_t lfdep;
	const char *filename;
	char *pathname;
	int error;

	FUNC12(&kld_sx, SA_XLOCKED);
	if (modname == NULL) {
		/*
 		 * We have to load KLD
 		 */
		FUNC0(verinfo == NULL, ("linker_load_module: verinfo"
		    " is not NULL"));
		pathname = FUNC7(kldname);
	} else {
		if (FUNC9(modname, verinfo) != NULL)
			return (EEXIST);
		if (kldname != NULL)
			pathname = FUNC10(kldname, M_LINKER);
		else if (rootvnode == NULL)
			pathname = NULL;
		else
			/*
			 * Need to find a KLD with required module
			 */
			pathname = FUNC8(modname,
			    FUNC11(modname), verinfo);
	}
	if (pathname == NULL)
		return (ENOENT);

	/*
	 * Can't load more than one file with the same basename XXX:
	 * Actually it should be possible to have multiple KLDs with
	 * the same basename but different path because they can
	 * provide different versions of the same modules.
	 */
	filename = FUNC2(pathname);
	if (FUNC5(filename))
		error = EEXIST;
	else do {
		error = FUNC6(pathname, &lfdep);
		if (error)
			break;
		if (modname && verinfo &&
		    FUNC9(modname, verinfo) == NULL) {
			FUNC4(lfdep, LINKER_UNLOAD_FORCE);
			error = ENOENT;
			break;
		}
		if (parent) {
			error = FUNC3(parent, lfdep);
			if (error)
				break;
		}
		if (lfpp)
			*lfpp = lfdep;
	} while (0);
	FUNC1(pathname, M_LINKER);
	return (error);
}