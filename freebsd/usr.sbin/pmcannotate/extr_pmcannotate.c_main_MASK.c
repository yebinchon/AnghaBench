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
typedef  int /*<<< orphan*/  tmpf ;
struct entry {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FNBUFF ; 
 int F_OK ; 
 int LNBUFF ; 
 int MAXPATHLEN ; 
 int R_OK ; 
 int /*<<< orphan*/  TMPNAME ; 
 char* _PATH_TMP ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct entry*) ; 
 struct entry* FUNC8 (char*,uintptr_t,uintptr_t,uintptr_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (float) ; 
 int FUNC13 (char*,char*,int) ; 
 int FUNC14 () ; 
 struct entry* FUNC15 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC16 (struct entry*) ; 
 char* FUNC17 (char*) ; 
 int FUNC18 (int,char**,char*) ; 
 scalar_t__ FUNC19 (char) ; 
 int FUNC20 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,char*,char*,...) ; 
 int FUNC23 (char*,char*,void**,char*,void**,void**) ; 
 scalar_t__ FUNC24 (char*) ; 
 int /*<<< orphan*/  totalsamples ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

int
FUNC26(int argc, char *argv[])
{
	char buffer[LNBUFF], fname[FNBUFF];
	char *tbfl, *tofl, *tmpdir;
	char tmpf[MAXPATHLEN * 2 + 50];
	float limit;
	char *bin, *exec, *kfile, *ofile;
	struct entry *obj;
	FILE *gfp, *bfp;
	void *ptr, *hstart, *hend;
	uintptr_t tmppc, ostart, oend;
	int cget, asmsrc;

	exec = argv[0];
	ofile = NULL;
	bin = NULL;
	kfile = NULL;
	asmsrc = 0;
	limit = 0.5;
	while ((cget = FUNC18(argc, argv, "ahl:k:")) != -1)
		switch(cget) {
		case 'a':
			asmsrc = 1;
			break;
		case 'k':
			kfile = optarg;
			break;
		case 'l':
			limit = (float)FUNC4(optarg);
			break;
		case 'h':
		case '?':
		default:
			FUNC25(exec);
		}
	argc -= optind;
	argv += optind;
	if (argc != 2)
		FUNC25(exec);
	ofile = argv[0];
	bin = argv[1];

	if (FUNC1(bin, R_OK | F_OK) == -1)
		FUNC0(exec, "%s: Impossible to locate the binary file\n",
		    exec);
	if (FUNC1(ofile, R_OK | F_OK) == -1)
		FUNC0(exec, "%s: Impossible to locate the pmcstat file\n",
		    exec);
	if (kfile != NULL && FUNC1(kfile, R_OK | F_OK) == -1)
		FUNC0(exec, "%s: Impossible to locate the kernel file\n",
		    exec);

	FUNC5(tmpf, sizeof(tmpf));
	tmpdir = FUNC17("TMPDIR");
	if (tmpdir == NULL) {
		FUNC3(&tbfl, "%s/%d", _PATH_TMP, TMPNAME);
		FUNC3(&tofl, "%s/%d", _PATH_TMP, TMPNAME);
	} else {
		FUNC3(&tbfl, "%s/%d", tmpdir, TMPNAME);
		FUNC3(&tofl, "%s/%d", tmpdir, TMPNAME);
	}
	if (tofl == NULL || tbfl == NULL)
		FUNC0(exec, "%s: Cannot create tempfile templates\n",
		    exec);
	if (FUNC20(tofl) == -1)
		FUNC0(exec, "%s: Impossible to create the tmp file\n",
		    exec);
	if (kfile != NULL)
		FUNC22(tmpf, sizeof(tmpf), "pmcstat -k %s -R %s -m %s",
		    kfile, ofile, tofl);
	else
		FUNC22(tmpf, sizeof(tmpf), "pmcstat -R %s -m %s", ofile,
		    tofl);
	if (FUNC24(tmpf) != 0)
		FUNC0(exec, "%s: Impossible to create the tmp file\n",
		    exec);

	gfp = FUNC11(tofl, "r");
	if (gfp == NULL)
		FUNC0(exec, "%s: Impossible to open the map file\n",
		    exec);

	/*
	 * Make the collection of raw entries from a pmcstat mapped file.
	 * The heuristic here wants strings in the form:
	 * "addr funcname startfaddr endfaddr".
	 */
	while (FUNC10(buffer, LNBUFF, gfp) != NULL) {
		if (FUNC19(buffer[0]))
			continue;
		if (FUNC23(buffer, "%p %s %p %p\n", &ptr, fname,
		    &hstart, &hend) != 4)
			FUNC0(NULL,
			    "%s: Invalid scan of function in the map file\n",
			    exec);
		ostart = (uintptr_t)hstart;
		oend = (uintptr_t)hend;
		tmppc = (uintptr_t)ptr;
		totalsamples++;
		obj = FUNC15(tmppc);
		if (obj != NULL) {
			FUNC7(obj);
			continue;
		}
		obj = FUNC8(fname, tmppc, ostart, oend);
		if (obj == NULL)
			FUNC0(exec,
			    "%s: Impossible to create a new object\n", exec);
		FUNC16(obj);
	}
	if (FUNC9(gfp) == EOF)
		FUNC0(exec, "%s: Impossible to close the filedesc\n",
		    exec);
	if (FUNC21(tofl) == -1)
                FUNC0(exec, "%s: Impossible to remove the tmpfile\n",
                    exec);

	/*
	 * Remove the loose end objects and feed the first-level aggregation
	 * queue.
	 */
	if (FUNC14() == -1)
		FUNC0(exec, "%s: Impossible to generate an analysis\n",
		    exec);
	FUNC12(limit);
	if (FUNC13(bin, tbfl, asmsrc) == -1)
		FUNC0(exec, "%s: Impossible to create the tmp file\n",
		    exec);

	bfp = FUNC11(tbfl, "r");
	if (bfp == NULL)
		FUNC0(exec, "%s: Impossible to open the binary file\n",
		    exec);

	if (asmsrc != 0)
		FUNC2(bfp);
	else if (FUNC6(bfp) == -1)
		FUNC0(NULL, "%s: Invalid format for the C file\n", exec);
	if (FUNC9(bfp) == EOF)
                FUNC0(exec, "%s: Impossible to close the filedesc\n",
                    exec);
	if (FUNC21(tbfl) == -1)
                FUNC0(exec, "%s: Impossible to remove the tmpfile\n",
                    exec);
	return (0);
}