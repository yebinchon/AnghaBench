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
struct fstab {char const* fs_vfstype; char const* fs_type; int /*<<< orphan*/  fs_spec; int /*<<< orphan*/  fs_file; } ;

/* Variables and functions */
 char* FSTAB_RW ; 
 int /*<<< orphan*/  GRPQUOTA ; 
 int /*<<< orphan*/  USRQUOTA ; 
 scalar_t__ aflag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct fstab* FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 () ; 
 scalar_t__ gflag ; 
 long FUNC6 (int /*<<< orphan*/ ,char**,int) ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC7 (struct fstab*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 scalar_t__ uflag ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  vflag ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int
FUNC12(int argc, char **argv)
{
	struct fstab *fs;
	const char *whoami;
	long argnum, done = 0;
	int ch, i, offmode = 0, errs = 0;

	whoami = FUNC5();
	if (FUNC9(whoami, "quotaoff") == 0)
		offmode++;
	else if (FUNC9(whoami, "quotaon") != 0)
		FUNC1(1, "name must be quotaon or quotaoff");
	while ((ch = FUNC4(argc, argv, "avug")) != -1) {
		switch(ch) {
		case 'a':
			aflag++;
			break;
		case 'g':
			gflag++;
			break;
		case 'u':
			uflag++;
			break;
		case 'v':
			vflag++;
			break;
		default:
			FUNC10();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc <= 0 && !aflag)
		FUNC10();
	if (!gflag && !uflag) {
		gflag++;
		uflag++;
	}
	FUNC8();
	while ((fs = FUNC3()) != NULL) {
		if (FUNC9(fs->fs_vfstype, "ufs") ||
		    FUNC9(fs->fs_type, FSTAB_RW))
			continue;
		if (aflag) {
			if (gflag)
				errs += FUNC7(fs, offmode, GRPQUOTA);
			if (uflag)
				errs += FUNC7(fs, offmode, USRQUOTA);
			continue;
		}
		if ((argnum = FUNC6(fs->fs_file, argv, argc)) >= 0 ||
		    (argnum = FUNC6(fs->fs_spec, argv, argc)) >= 0) {
			done |= 1 << argnum;
			if (gflag)
				errs += FUNC7(fs, offmode, GRPQUOTA);
			if (uflag)
				errs += FUNC7(fs, offmode, USRQUOTA);
		}
	}
	FUNC0();
	for (i = 0; i < argc; i++)
		if ((done & (1 << i)) == 0)
			FUNC11("%s not found in fstab", argv[i]);
	FUNC2(errs);
}