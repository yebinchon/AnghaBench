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
struct openfile {int /*<<< orphan*/  sepstring; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct openfile*) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 struct openfile* input ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  linep ; 
 int /*<<< orphan*/  morefiles ; 
 int /*<<< orphan*/  nofinalnl ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	struct	openfile *ip;

	if (argc == 1)
		FUNC9();
	if (FUNC2() == -1)
		FUNC3(1, "unable to limit stdio");
	FUNC7(argv);
	if (!morefiles)
		FUNC9();

	/*
	 * Cache NLS data, for strerror, for err(3), before entering capability
	 * mode.
	 */
	FUNC0();
	if (FUNC1() < 0)
		FUNC3(1, "unable to enter capability mode");

	for (;;) {
		linep = line;
		for (ip = input; ip->fp != NULL; ip++)
			linep = FUNC6(ip);
		if (!morefiles)
			FUNC4(0);
		FUNC5(line, stdout);
		FUNC5(ip->sepstring, stdout);
		if (!nofinalnl)
			FUNC8('\n');
	}
}