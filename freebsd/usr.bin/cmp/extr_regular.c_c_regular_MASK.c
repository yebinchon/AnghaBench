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
typedef  char u_char ;
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_MMAP_R ; 
 int /*<<< orphan*/  DIFF_EXIT ; 
 int /*<<< orphan*/  ERR_EXIT ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int MMAP_CHUNK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SA_NODEFER ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,scalar_t__,int,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 () ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,long long,char,char) ; 
 char* FUNC13 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  segv_handler ; 
 scalar_t__ sflag ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ xflag ; 

void
FUNC16(int fd1, const char *file1, off_t skip1, off_t len1,
    int fd2, const char *file2, off_t skip2, off_t len2)
{
	struct sigaction act, oact;
	cap_rights_t rights;
	u_char ch, *p1, *p2, *m1, *m2, *e1, *e2;
	off_t byte, length, line;
	off_t pagemask, off1, off2;
	size_t pagesize;
	int dfound;

	if (skip1 > len1)
		FUNC7(file1);
	len1 -= skip1;
	if (skip2 > len2)
		FUNC7(file2);
	len2 -= skip2;

	if (sflag && len1 != len2)
		FUNC9(DIFF_EXIT);

	pagesize = FUNC10();
	pagemask = (off_t)pagesize - 1;
	off1 = FUNC1(skip1);
	off2 = FUNC1(skip2);

	length = FUNC0(len1, len2);

	if ((m1 = FUNC13(NULL, fd1, off1)) == NULL) {
		FUNC2(fd1, file1, skip1, fd2, file2, skip2);
		return;
	}

	if ((m2 = FUNC13(NULL, fd2, off2)) == NULL) {
		FUNC11(m1, MMAP_CHUNK);
		FUNC2(fd1, file1, skip1, fd2, file2, skip2);
		return;
	}

	if (FUNC5(fd1, FUNC3(&rights, CAP_MMAP_R)) < 0)
		FUNC8(1, "unable to limit rights for %s", file1);
	if (FUNC5(fd2, FUNC3(&rights, CAP_MMAP_R)) < 0)
		FUNC8(1, "unable to limit rights for %s", file2);
	if (FUNC4() < 0)
		FUNC8(ERR_EXIT, "unable to enter capability mode");

	FUNC15(&act.sa_mask);
	act.sa_flags = SA_NODEFER;
	act.sa_handler = segv_handler;
	if (FUNC14(SIGSEGV, &act, &oact))
		FUNC8(ERR_EXIT, "sigaction()");

	dfound = 0;
	e1 = m1 + MMAP_CHUNK;
	e2 = m2 + MMAP_CHUNK;
	p1 = m1 + (skip1 - off1);
	p2 = m2 + (skip2 - off2);

	for (byte = line = 1; length--; ++byte) {
		if ((ch = *p1) != *p2) {
			if (xflag) {
				dfound = 1;
				(void)FUNC12("%08llx %02x %02x\n",
				    (long long)byte - 1, ch, *p2);
			} else if (lflag) {
				dfound = 1;
				(void)FUNC12("%6lld %3o %3o\n",
				    (long long)byte, ch, *p2);
			} else
				FUNC6(file1, file2, byte, line);
				/* NOTREACHED */
		}
		if (ch == '\n')
			++line;
		if (++p1 == e1) {
			off1 += MMAP_CHUNK;
			if ((p1 = m1 = FUNC13(m1, fd1, off1)) == NULL) {
				FUNC11(m2, MMAP_CHUNK);
				FUNC8(ERR_EXIT, "remmap %s", file1);
			}
			e1 = m1 + MMAP_CHUNK;
		}
		if (++p2 == e2) {
			off2 += MMAP_CHUNK;
			if ((p2 = m2 = FUNC13(m2, fd2, off2)) == NULL) {
				FUNC11(m1, MMAP_CHUNK);
				FUNC8(ERR_EXIT, "remmap %s", file2);
			}
			e2 = m2 + MMAP_CHUNK;
		}
	}
	FUNC11(m1, MMAP_CHUNK);
	FUNC11(m2, MMAP_CHUNK);

	if (FUNC14(SIGSEGV, &oact, NULL))
		FUNC8(ERR_EXIT, "sigaction()");

	if (len1 != len2)
		FUNC7 (len1 > len2 ? file2 : file1);
	if (dfound)
		FUNC9(DIFF_EXIT);
}