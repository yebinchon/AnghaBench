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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int,int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 unsigned long fillbyte ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ quiet ; 
 scalar_t__ recover ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 unsigned long FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long) ; 

int
FUNC10(int argc, char **argv)
{
	int c, errs = 0;
	unsigned int numids = 0, trackno = 0;
	const char *fname = 0, *_devname = "/dev/fd0";
	char *cp;
	FILE *of = stdout;
	int fd;
	unsigned long ul;

	while ((c = FUNC5(argc, argv, "d:f:I:o:qrt:")) != -1)
		switch (c) {
		case 'd':
			_devname = optarg;
			break;

		case 'f':
			ul = FUNC7(optarg, &cp, 0);
			if (*cp != '\0') {
				FUNC4(stderr,
			"Bad argument %s to -f option; must be numeric\n",
					optarg);
				FUNC8();
			}
			if (ul > 0xff)
				FUNC9(
			"Warning: fillbyte %#lx too large, truncating\n",
				      ul);
			fillbyte = ul & 0xff;
			break;

		case 'I':
			ul = FUNC7(optarg, &cp, 0);
			if (*cp != '\0') {
				FUNC4(stderr,
			"Bad argument %s to -I option; must be numeric\n",
					optarg);
				FUNC8();
			}
			numids = ul;
			break;

		case 'o':
			fname = optarg;
			break;

		case 'q':
			quiet++;
			break;

		case 'r':
			recover++;
			break;

		case 't':
			ul = FUNC7(optarg, &cp, 0);
			if (*cp != '\0') {
				FUNC4(stderr,
			"Bad argument %s to -t option; must be numeric\n",
					optarg);
				FUNC8();
			}
			trackno = ul;
			break;

		default:
			errs++;
		}
	argc -= optind;
	argv += optind;

	if (argc != 0 || errs)
		FUNC8();
	/* check for mutually exclusive options */
	if (numids) {
		if (fname || quiet || recover)
			FUNC8();
	} else {
		if (trackno)
			FUNC8();
	}

	if (fname) {
		if ((of = FUNC3(fname, "w")) == NULL)
			FUNC2(EX_OSERR, "cannot create output file %s", fname);
	}

	if ((fd = FUNC6(_devname, O_RDONLY)) == -1)
		FUNC2(EX_OSERR, "cannot open device %s", _devname);

	return (numids? FUNC1(fd, numids, trackno): FUNC0(fd, of, _devname));
}