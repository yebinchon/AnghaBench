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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(int argc, char **argv)
{
	off_t offset, length;
	uint64_t usz;
	int ch, error;
	bool dryrun, verbose;
	char *fname, *name;

	error = 0;
	length = offset = 0;
	name = argv[0];
	dryrun = verbose = true;

	while ((ch = FUNC2(argc, argv, "Nfl:o:qr:v")) != -1)
		switch (ch) {
		case 'N':
			dryrun = true;
			verbose = true;
			break;
		case 'f':
			dryrun = false;
			break;
		case 'l':
		case 'o':
			if (FUNC1(optarg, &usz) == -1 ||
					(off_t)usz < 0 || (usz == 0 && ch == 'l'))
				FUNC0(EX_USAGE,
					"invalid %s of the region: %s",
					ch == 'o' ? "offset" : "length",
					optarg);
			if (ch == 'o')
				offset = (off_t)usz;
			else
				length = (off_t)usz;
			break;
		case 'q':
			verbose = false;
			break;
		case 'r':
			if ((length = FUNC3(optarg)) == 0)
				FUNC0(EX_USAGE,
					"invalid zero length reference file"
					" for the region: %s", optarg);
			break;
		case 'v':
			verbose = true;
			break;
		default:
			FUNC6(name);
			/* NOTREACHED */
		}

	/*
	 * Safety net: do not allow mistakes like
	 *
	 *	trim -f /dev/da0 -r rfile
	 *
	 * This would trim whole device then error on non-existing file -r.
	 * Following check prevents this while allowing this form still:
	 *
	 *	trim -f -- /dev/da0 -r rfile
	 */
	
	if (FUNC4(argv[optind-1], "--") != 0) {
		for (ch = optind; ch < argc; ch++)
			if (argv[ch][0] == '-')
				FUNC6(name);
	}

	argv += optind;
	argc -= optind;

	if (argc < 1)
		FUNC6(name);

	while ((fname = *argv++) != NULL)
		if (FUNC5(fname, offset, length, dryrun, verbose) < 0)
			error++;

	return (error ? EXIT_FAILURE : EXIT_SUCCESS);
}