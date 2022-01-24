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
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int NGROUPS ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int,scalar_t__*) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  hflag ; 
 int /*<<< orphan*/  lflag ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  qflag ; 
 int /*<<< orphan*/  rflag ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  vflag ; 

int
FUNC12(int argc, char *argv[])
{
	int ngroups; 
	gid_t mygid, gidset[NGROUPS];
	int i, ch, gflag = 0, uflag = 0, errflag = 0;

	while ((ch = FUNC5(argc, argv, "f:ghlrquv")) != -1) {
		switch(ch) {
		case 'f':
			filename = optarg;
			break;
		case 'g':
			gflag++;
			break;
		case 'h':
			hflag++;
			break;
		case 'l':
			lflag++;
			break;
		case 'q':
			qflag++;
			break;
		case 'r':
			rflag++;
			break;
		case 'u':
			uflag++;
			break;
		case 'v':
			vflag++;
			break;
		default:
			FUNC11();
		}
	}
	argc -= optind;
	argv += optind;
	if (!uflag && !gflag)
		uflag++;
	if (argc == 0) {
		if (uflag)
			errflag += FUNC9(FUNC6());
		if (gflag) {
			mygid = FUNC3();
			ngroups = FUNC4(NGROUPS, gidset);
			if (ngroups < 0)
				FUNC2(1, "getgroups");
			errflag += FUNC7(mygid);
			for (i = 0; i < ngroups; i++)
				if (gidset[i] != mygid)
					errflag += FUNC7(gidset[i]);
		}
		return(errflag);
	}
	if (uflag && gflag)
		FUNC11();
	if (uflag) {
		for (; argc > 0; argc--, argv++) {
			if (FUNC0(*argv))
				errflag += FUNC9(FUNC1(*argv));
			else
				errflag += FUNC10(*argv);
		}
		return(errflag);
	}
	if (gflag) {
		for (; argc > 0; argc--, argv++) {
			if (FUNC0(*argv))
				errflag += FUNC7(FUNC1(*argv));
			else
				errflag += FUNC8(*argv);
		}
	}
	return(errflag);
}