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
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  fshead ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  length ; 
 char* optarg ; 
 int /*<<< orphan*/  optind ; 
 int skip ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  vflag ; 

void
FUNC9(int argc, char ***argvp)
{
	int ch;
	char *p, **argv;

	argv = *argvp;
	if ((p = FUNC6(argv[0], 'h')) != NULL &&
	    FUNC5(p, "hd") == 0) {
		/* "Canonical" format, implies -C. */
		FUNC0("\"%08.8_Ax\n\"");
		FUNC0("\"%08.8_ax  \" 8/1 \"%02x \" \"  \" 8/1 \"%02x \" ");
		FUNC0("\"  |\" 16/1 \"%_p\" \"|\\n\"");
	}
	while ((ch = FUNC4(argc, argv, "bcCde:f:n:os:vx")) != -1)
		switch (ch) {
		case 'b':
			FUNC0("\"%07.7_Ax\n\"");
			FUNC0("\"%07.7_ax \" 16/1 \"%03o \" \"\\n\"");
			break;
		case 'c':
			FUNC0("\"%07.7_Ax\n\"");
			FUNC0("\"%07.7_ax \" 16/1 \"%3_c \" \"\\n\"");
			break;
		case 'C':
			FUNC0("\"%08.8_Ax\n\"");
			FUNC0("\"%08.8_ax  \" 8/1 \"%02x \" \"  \" 8/1 \"%02x \" ");
			FUNC0("\"  |\" 16/1 \"%_p\" \"|\\n\"");
			break;
		case 'd':
			FUNC0("\"%07.7_Ax\n\"");
			FUNC0("\"%07.7_ax \" 8/2 \"  %05u \" \"\\n\"");
			break;
		case 'e':
			FUNC0(optarg);
			break;
		case 'f':
			FUNC1(optarg);
			break;
		case 'n':
			if ((length = FUNC2(optarg)) < 0)
				FUNC3(1, "%s: bad length value", optarg);
			break;
		case 'o':
			FUNC0("\"%07.7_Ax\n\"");
			FUNC0("\"%07.7_ax \" 8/2 \" %06o \" \"\\n\"");
			break;
		case 's':
			if ((skip = FUNC7(optarg, &p, 0)) < 0)
				FUNC3(1, "%s: bad skip value", optarg);
			switch(*p) {
			case 'b':
				skip *= 512;
				break;
			case 'k':
				skip *= 1024;
				break;
			case 'm':
				skip *= 1048576;
				break;
			}
			break;
		case 'v':
			vflag = ALL;
			break;
		case 'x':
			FUNC0("\"%07.7_Ax\n\"");
			FUNC0("\"%07.7_ax \" 8/2 \"   %04x \" \"\\n\"");
			break;
		case '?':
			FUNC8();
		}

	if (!fshead) {
		FUNC0("\"%07.7_Ax\n\"");
		FUNC0("\"%07.7_ax \" 8/2 \"%04x \" \"\\n\"");
	}

	*argvp += optind;
}