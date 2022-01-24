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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,char**,char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 void FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

int
FUNC16(int argc, char **argv)
{
	uint32_t val;
	int ch, fd, rval;
	off_t len;
	char *fn, *p;
	int (*cfncn)(int, uint32_t *, off_t *);
	void (*pfncn)(char *, uint32_t, off_t);

	if ((p = FUNC12(argv[0], '/')) == NULL)
		p = argv[0];
	else
		++p;
	if (!FUNC11(p, "sum")) {
		cfncn = csum1;
		pfncn = psum1;
		++argv;
	} else {
		cfncn = crc;
		pfncn = pcrc;

		while ((ch = FUNC6(argc, argv, "o:")) != -1)
			switch (ch) {
			case 'o':
				if (!FUNC11(optarg, "1")) {
					cfncn = csum1;
					pfncn = psum1;
				} else if (!FUNC11(optarg, "2")) {
					cfncn = csum2;
					pfncn = psum2;
				} else if (!FUNC11(optarg, "3")) {
					cfncn = crc32;
					pfncn = pcrc;
				} else {
					FUNC15("illegal argument to -o option");
					FUNC13();
				}
				break;
			case '?':
			default:
				FUNC13();
			}
		argc -= optind;
		argv += optind;
	}

	fd = STDIN_FILENO;
	fn = NULL;
	rval = 0;
	do {
		if (*argv) {
			fn = *argv++;
			if ((fd = FUNC7(fn, O_RDONLY, 0)) < 0) {
				FUNC14("%s", fn);
				rval = 1;
				continue;
			}
		}
		if (cfncn(fd, &val, &len)) {
			FUNC14("%s", fn ? fn : "stdin");
			rval = 1;
		} else
			pfncn(fn, val, len);
		(void)FUNC0(fd);
	} while (*argv);
	FUNC5(rval);
}