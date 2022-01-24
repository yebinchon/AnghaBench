#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  path; int /*<<< orphan*/  was_pos_file; int /*<<< orphan*/  pos; int /*<<< orphan*/  posfile; } ;

/* Variables and functions */
 int CPERS ; 
 int Fort_len ; 
 TYPE_1__* Fortfile ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCK_EX ; 
 int /*<<< orphan*/  LOCK_UN ; 
 scalar_t__ Long_only ; 
 int /*<<< orphan*/  MINW ; 
 scalar_t__ Match ; 
 scalar_t__ SLEN ; 
 scalar_t__ Short_only ; 
 scalar_t__ Wait ; 
 int WriteToDisk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char**) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int) ; 

int
FUNC17(int argc, char *argv[])
{
	int	fd;

	if (FUNC9("FORTUNE_SAVESTATE") != NULL)
		WriteToDisk = true;

	(void) FUNC14(LC_ALL, "");

	FUNC10();
	FUNC8(argc, argv);

	if (Match)
		FUNC3(FUNC4() != 0);

	FUNC11();
	do {
		FUNC7();
	} while ((Short_only && FUNC6() > SLEN) ||
		 (Long_only && FUNC6() <= SLEN));

	FUNC2(Fortfile);

	if (WriteToDisk) {
		if ((fd = FUNC1(Fortfile->posfile, 0666)) < 0) {
			FUNC13(Fortfile->posfile);
			FUNC3(1);
		}
		/*
		 * if we can, we exclusive lock, but since it isn't very
		 * important, we just punt if we don't have easy locking
		 * available.
		 */
		FUNC5(fd, LOCK_EX);
		FUNC16(fd, (char *) &Fortfile->pos, sizeof Fortfile->pos);
		if (!Fortfile->was_pos_file)
		FUNC0(Fortfile->path, 0666);
		FUNC5(fd, LOCK_UN);
	}
	if (Wait) {
		if (Fort_len == 0)
			(void) FUNC6();
		FUNC15((unsigned int) FUNC12(Fort_len / CPERS, MINW));
	}

	FUNC3(0);
}