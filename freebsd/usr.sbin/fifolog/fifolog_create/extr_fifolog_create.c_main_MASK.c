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
typedef  int int64_t ;

/* Variables and functions */
 int DEF_RECCNT ; 
 int DEF_RECSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC3 (char* const,int,int) ; 
 int FUNC4 (int,char* const*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int argc, char * const *argv)
{
	int ch;
	int64_t size;
	int64_t recsize;
	int64_t reccnt;
	const char *s;

	recsize = 0;
	size = 0;
	reccnt = 0;
	while((ch = FUNC4(argc, argv, "l:r:s:")) != -1) {
		switch (ch) {
		case 'l':
			if (FUNC2(optarg, &recsize))
				FUNC0(1, "Couldn't parse -l argument");
			break;
		case 'r':
			if (FUNC2(optarg, &reccnt))
				FUNC0(1, "Couldn't parse -r argument");
			break;
		case 's':
			if (FUNC2(optarg, &size))
				FUNC0(1, "Couldn't parse -s argument");
			break;
		default:
			FUNC5();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc != 1)
		FUNC5();

	if (size != 0 && reccnt != 0 && recsize != 0) {		/* N N N */
		if (size !=  reccnt * recsize)
			FUNC1(1, "Inconsistent -l, -r and -s values");
	} else if (size != 0 && reccnt != 0 && recsize == 0) {	/* N N Z */
		if (size % reccnt)
			FUNC1(1,
			    "Inconsistent -r and -s values (gives remainder)");
		recsize = size / reccnt;
	} else if (size != 0 && reccnt == 0 && recsize != 0) {	/* N Z N */
		if (size % recsize)
		    FUNC1(1, "-s arg not divisible by -l arg");
	} else if (size != 0 && reccnt == 0 && recsize == 0) {	/* N Z Z */
		recsize = DEF_RECSIZE;
		if (size % recsize)
		    FUNC1(1, "-s arg not divisible by %jd", recsize);
	} else if (size == 0 && reccnt != 0 && recsize != 0) {	/* Z N N */
		size = reccnt * recsize;
	} else if (size == 0 && reccnt != 0 && recsize == 0) {	/* Z N Z */
		recsize = DEF_RECSIZE;
		size = reccnt * recsize;
	} else if (size == 0 && reccnt == 0 && recsize != 0) {	/* Z Z N */
		size = DEF_RECCNT * recsize;
	} else if (size == 0 && reccnt == 0 && recsize == 0) {	/* Z Z Z */
		recsize = DEF_RECSIZE;
		size = DEF_RECCNT * recsize;
	}

	s = FUNC3(argv[0], size, recsize);
	if (s == NULL)
		return (0);
	FUNC0(1, "%s", s);
}