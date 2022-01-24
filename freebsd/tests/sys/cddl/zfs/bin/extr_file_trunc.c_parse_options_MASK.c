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
 void* FUNC0 (char*) ; 
 int bsize ; 
 int count ; 
 scalar_t__ errflag ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int fsize ; 
 int FUNC2 (int,char**,char*) ; 
 void* offset ; 
 int /*<<< orphan*/  rflag ; 
 int seed ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC6(int argc, char *argv[])
{
	int c;

	extern char *optarg;
	extern int optind, optopt;

	count = fsize / bsize;
	seed = FUNC4(NULL);
	while ((c = FUNC2(argc, argv, "b:c:f:o:rs:v")) != -1) {
		switch (c) {
			case 'b':
				bsize = FUNC0(optarg);
				break;

			case 'c':
				count = FUNC0(optarg);
				break;

			case 'f':
				fsize = FUNC0(optarg);
				break;

			case 'o':
				offset = FUNC0(optarg);
				break;

			case 'r':
				rflag++;
				break;

			case 's':
				seed = FUNC0(optarg);
				break;

			case 'v':
				vflag++;
				break;

			case ':':
				(void) FUNC1(stderr,
				    "Option -%c requires an operand\n", optopt);
				errflag++;
				break;

			case '?':
				(void) FUNC1(stderr,
				    "Unrecognized option: -%c\n", optopt);
				errflag++;
				break;
		}

		if (errflag) {
			(void) FUNC5(argv[0]);
		}
	}
	if (argc <= optind) {
		(void) FUNC1(stderr,
		    "No filename specified\n");
		FUNC5(argv[0]);
	}
	filename = argv[optind];

	if (vflag) {
		(void) FUNC1(stderr, "Seed = %d\n", seed);
	}
	FUNC3(seed);
}