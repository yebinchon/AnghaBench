#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pr {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_4__ {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int D_BINARY ; 
 int D_DIFFER ; 
 int D_EMPTY1 ; 
 int D_EMPTY2 ; 
 int D_FORCEASCII ; 
 int D_IGNORECASE ; 
 int D_MISMATCH1 ; 
 int D_MISMATCH2 ; 
 int D_SAME ; 
 int* J ; 
 scalar_t__ STDIN_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* _PATH_DEVNULL ; 
 scalar_t__ anychange ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  chrtran ; 
 int* class ; 
 scalar_t__ clen ; 
 int* clist ; 
 int clistlen ; 
 int /*<<< orphan*/  clow2low ; 
 scalar_t__ context_vec_ptr ; 
 scalar_t__ context_vec_start ; 
 int /*<<< orphan*/  cup2low ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__* file ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int*) ; 
 scalar_t__ FUNC19 (scalar_t__,TYPE_1__*) ; 
 int* ixnew ; 
 int* ixold ; 
 int* klist ; 
 scalar_t__ lastline ; 
 scalar_t__ lastmatchline ; 
 int* len ; 
 scalar_t__ lflag ; 
 int* member ; 
 int /*<<< orphan*/ * FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/ * sfile ; 
 int* slen ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 struct pr* FUNC25 (char*,char*) ; 
 int status ; 
 TYPE_1__ stb1 ; 
 TYPE_1__ stb2 ; 
 int /*<<< orphan*/ * stdin ; 
 int FUNC26 (int*,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct pr*) ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC31 (char*,char*) ; 
 int* FUNC32 (int,int) ; 
 int* FUNC33 (int*,int,int) ; 

int
FUNC34(char *file1, char *file2, int flags, int capsicum)
{
	FILE *f1, *f2;
	int i, rval;
	struct pr *pr = NULL;
	cap_rights_t rights_ro;

	f1 = f2 = NULL;
	rval = D_SAME;
	anychange = 0;
	lastline = 0;
	lastmatchline = 0;
	context_vec_ptr = context_vec_start - 1;
	if (flags & D_IGNORECASE)
		chrtran = cup2low;
	else
		chrtran = clow2low;
	if (FUNC0(stb1.st_mode) != FUNC0(stb2.st_mode))
		return (FUNC0(stb1.st_mode) ? D_MISMATCH1 : D_MISMATCH2);
	if (FUNC28(file1, "-") == 0 && FUNC28(file2, "-") == 0)
		goto closem;

	if (flags & D_EMPTY1)
		f1 = FUNC17(_PATH_DEVNULL, "r");
	else {
		if (!FUNC1(stb1.st_mode)) {
			if ((f1 = FUNC20(file1)) == NULL ||
			    FUNC19(FUNC15(f1), &stb1) < 0) {
				FUNC31("%s", file1);
				status |= 2;
				goto closem;
			}
		} else if (FUNC28(file1, "-") == 0)
			f1 = stdin;
		else
			f1 = FUNC17(file1, "r");
	}
	if (f1 == NULL) {
		FUNC31("%s", file1);
		status |= 2;
		goto closem;
	}

	if (flags & D_EMPTY2)
		f2 = FUNC17(_PATH_DEVNULL, "r");
	else {
		if (!FUNC1(stb2.st_mode)) {
			if ((f2 = FUNC20(file2)) == NULL ||
			    FUNC19(FUNC15(f2), &stb2) < 0) {
				FUNC31("%s", file2);
				status |= 2;
				goto closem;
			}
		} else if (FUNC28(file2, "-") == 0)
			f2 = stdin;
		else
			f2 = FUNC17(file2, "r");
	}
	if (f2 == NULL) {
		FUNC31("%s", file2);
		status |= 2;
		goto closem;
	}

	if (lflag)
		pr = FUNC25(file1, file2);

	if (capsicum) {
		FUNC3(&rights_ro, CAP_READ, CAP_FSTAT, CAP_SEEK);
		if (FUNC10(FUNC15(f1), &rights_ro) < 0)
			FUNC13(2, "unable to limit rights on: %s", file1);
		if (FUNC10(FUNC15(f2), &rights_ro) < 0)
			FUNC13(2, "unable to limit rights on: %s", file2);
		if (FUNC15(f1) == STDIN_FILENO || FUNC15(f2) == STDIN_FILENO) {
			/* stding has already been limited */
			if (FUNC7() == -1)
				FUNC13(2, "unable to limit stderr");
			if (FUNC9() == -1)
				FUNC13(2, "unable to limit stdout");
		} else if (FUNC8() == -1)
				FUNC13(2, "unable to limit stdio");

		FUNC4();
		FUNC5();
		if (FUNC6() < 0)
			FUNC13(2, "unable to enter capability mode");
	}

	switch (FUNC16(f1, f2, flags)) {
	case 0:
		goto closem;
	case 1:
		break;
	default:
		/* error */
		status |= 2;
		goto closem;
	}

	if ((flags & D_FORCEASCII) == 0 &&
	    (!FUNC2(f1) || !FUNC2(f2))) {
		rval = D_BINARY;
		status |= 1;
		goto closem;
	}
	FUNC22(0, f1, stb1.st_size, flags);
	FUNC22(1, f2, stb2.st_size, flags);

	FUNC23();
	FUNC24(sfile[0], slen[0]);
	FUNC24(sfile[1], slen[1]);

	member = (int *)file[1];
	FUNC12(sfile[0], slen[0], sfile[1], slen[1], member);
	member = FUNC33(member, slen[1] + 2, sizeof(*member));

	class = (int *)file[0];
	FUNC30(sfile[0], slen[0], class);
	class = FUNC33(class, slen[0] + 2, sizeof(*class));

	klist = FUNC32(slen[0] + 2, sizeof(*klist));
	clen = 0;
	clistlen = 100;
	clist = FUNC32(clistlen, sizeof(*clist));
	i = FUNC26(class, slen[0], member, klist, flags);
	FUNC18(member);
	FUNC18(class);

	J = FUNC33(J, len[0] + 2, sizeof(*J));
	FUNC29(klist[i]);
	FUNC18(clist);
	FUNC18(klist);

	ixold = FUNC33(ixold, len[0] + 2, sizeof(*ixold));
	ixnew = FUNC33(ixnew, len[1] + 2, sizeof(*ixnew));
	FUNC11(f1, f2, flags);
	FUNC21(file1, f1, file2, f2, flags);
	if (pr != NULL)
		FUNC27(pr);

closem:
	if (anychange) {
		status |= 1;
		if (rval == D_SAME)
			rval = D_DIFFER;
	}
	if (f1 != NULL)
		FUNC14(f1);
	if (f2 != NULL)
		FUNC14(f2);

	return (rval);
}