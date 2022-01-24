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

/* Variables and functions */
 int /*<<< orphan*/  dir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  font_current ; 
 int /*<<< orphan*/  fontdir ; 
 int /*<<< orphan*/  keymapdir ; 
 char* lang ; 
 char* lang_default ; 
 int print ; 
 int show ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int argc, char **argv)
{
	int i;

	for (i=1; i<argc; i++) {
		if (argv[i][0] != '-')
			FUNC2();
		else if (!FUNC1(argv[i], "-help") || !FUNC1(argv[i], "-h"))
			FUNC2();
		else if (!FUNC1(argv[i], "-verbose") || !FUNC1(argv[i], "-v"))
			verbose = 1;
		else if (!FUNC1(argv[i], "-lang") || !FUNC1(argv[i], "-l"))
			if (i + 1 == argc)
				FUNC2();
			else
				lang = argv[++i];
		else if (!FUNC1(argv[i], "-default") || !FUNC1(argv[i], "-d"))
			lang = lang_default;
		else if (!FUNC1(argv[i], "-show") || !FUNC1(argv[i], "-s"))
			show = 1;
		else if (!FUNC1(argv[i], "-print") || !FUNC1(argv[i], "-p"))
			print = 1;
		else if (!FUNC1(argv[i], "-restore") ||
		    !FUNC1(argv[i], "-r")) {
			FUNC3(font_current);
			FUNC0(0);
		} else if (!FUNC1(argv[i], "-K"))
			dir = keymapdir;
		else if (!FUNC1(argv[i], "-V"))
			dir = fontdir;
		else
			FUNC2();
	}
}