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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,int,int) ; 
 int exitstatus ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int,int,int) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 

int
FUNC7(int argc, char **argv)
{
	int c, width;
	int listmode, readmode, writemode, attachedmode, dumpbarmode;
	int bars, bridge, caps, errors, verbose, vpd;

	listmode = readmode = writemode = attachedmode = dumpbarmode = 0;
	bars = bridge = caps = errors = verbose = vpd= 0;
	width = 4;

	while ((c = FUNC2(argc, argv, "aBbcDehlrwVv")) != -1) {
		switch(c) {
		case 'a':
			attachedmode = 1;
			break;

		case 'B':
			bridge = 1;
			break;

		case 'b':
			bars = 1;
			width = 1;
			break;

		case 'c':
			caps = 1;
			break;

		case 'D':
			dumpbarmode = 1;
			break;

		case 'e':
			errors = 1;
			break;

		case 'h':
			width = 2;
			break;

		case 'l':
			listmode = 1;
			break;

		case 'r':
			readmode = 1;
			break;

		case 'w':
			writemode = 1;
			break;

		case 'v':
			verbose = 1;
			break;

		case 'V':
			vpd = 1;
			break;

		case 'x':
			width = 8;
			break;

		default:
			FUNC5();
		}
	}

	if ((listmode && optind >= argc + 1)
	    || (writemode && optind + 3 != argc)
	    || (readmode && optind + 2 != argc)
	    || (attachedmode && optind + 1 != argc)
	    || (dumpbarmode && (optind + 2 > argc || optind + 4 < argc))
	    || (width == 8 && !dumpbarmode))
		FUNC5();

	if (listmode) {
		FUNC3(optind + 1 == argc ? argv[optind] : NULL, verbose,
		    bars, bridge, caps, errors, vpd);
	} else if (attachedmode) {
		FUNC0(argv[optind]);
	} else if (readmode) {
		FUNC4(argv[optind], argv[optind + 1], width);
	} else if (writemode) {
		FUNC6(argv[optind], argv[optind + 1], argv[optind + 2],
		    width);
	} else if (dumpbarmode) {
		FUNC1(argv[optind], argv[optind + 1],
		    optind + 2 < argc ? argv[optind + 2] : NULL, 
		    optind + 3 < argc ? argv[optind + 3] : NULL, 
		    width, verbose);
	} else {
		FUNC5();
	}

	return (exitstatus);
}