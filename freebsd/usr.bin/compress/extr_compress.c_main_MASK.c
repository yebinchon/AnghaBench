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
typedef  int /*<<< orphan*/  newname ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  eval ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int force ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 size_t FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int verbose ; 

int
FUNC12(int argc, char *argv[])
{
	enum {COMPRESS, DECOMPRESS} style;
	size_t len;
	int bits, cat, ch;
	char *p, newname[MAXPATHLEN];

	cat = 0;
	if ((p = FUNC9(argv[0], '/')) == NULL)
		p = argv[0];
	else
		++p;
	if (!FUNC7(p, "uncompress"))
		style = DECOMPRESS;
	else if (!FUNC7(p, "compress"))
		style = COMPRESS;
	else if (!FUNC7(p, "zcat")) {
		cat = 1;
		style = DECOMPRESS;
	} else
		FUNC3(1, "unknown program name");

	bits = 0;
	while ((ch = FUNC5(argc, argv, "b:cdfv")) != -1)
		switch(ch) {
		case 'b':
			bits = FUNC10(optarg, &p, 10);
			if (*p)
				FUNC3(1, "illegal bit count -- %s", optarg);
			break;
		case 'c':
			cat = 1;
			break;
		case 'd':		/* Backward compatible. */
			style = DECOMPRESS;
			break;
		case 'f':
			force = 1;
			break;
		case 'v':
			verbose = 1;
			break;
		case '?':
		default:
			FUNC11(style == COMPRESS);
		}
	argc -= optind;
	argv += optind;

	if (argc == 0) {
		switch(style) {
		case COMPRESS:
			(void)FUNC0("/dev/stdin", "/dev/stdout", bits);
			break;
		case DECOMPRESS:
			(void)FUNC2("/dev/stdin", "/dev/stdout", bits);
			break;
		}
		FUNC4 (eval);
	}

	if (cat == 1 && style == COMPRESS && argc > 1)
		FUNC3(1, "the -c option permits only a single file argument");

	for (; *argv; ++argv)
		switch(style) {
		case COMPRESS:
			if (FUNC7(*argv, "-") == 0) {
				FUNC0("/dev/stdin", "/dev/stdout", bits);
				break;
			} else if (cat) {
				FUNC0(*argv, "/dev/stdout", bits);
				break;
			}
			if ((p = FUNC9(*argv, '.')) != NULL &&
			    !FUNC7(p, ".Z")) {
				FUNC1("%s: name already has trailing .Z",
				    *argv);
				break;
			}
			len = FUNC8(*argv);
			if (len > sizeof(newname) - 3) {
				FUNC1("%s: name too long", *argv);
				break;
			}
			FUNC6(newname, *argv, len);
			newname[len] = '.';
			newname[len + 1] = 'Z';
			newname[len + 2] = '\0';
			FUNC0(*argv, newname, bits);
			break;
		case DECOMPRESS:
			if (FUNC7(*argv, "-") == 0) {
				FUNC2("/dev/stdin", "/dev/stdout", bits);
				break;
			}
			len = FUNC8(*argv);
			if ((p = FUNC9(*argv, '.')) == NULL ||
			    FUNC7(p, ".Z")) {
				if (len > sizeof(newname) - 3) {
					FUNC1("%s: name too long", *argv);
					break;
				}
				FUNC6(newname, *argv, len);
				newname[len] = '.';
				newname[len + 1] = 'Z';
				newname[len + 2] = '\0';
				FUNC2(newname,
				    cat ? "/dev/stdout" : *argv, bits);
			} else {
				if (len - 2 > sizeof(newname) - 1) {
					FUNC1("%s: name too long", *argv);
					break;
				}
				FUNC6(newname, *argv, len - 2);
				newname[len - 2] = '\0';
				FUNC2(*argv,
				    cat ? "/dev/stdout" : newname, bits);
			}
			break;
		}
	FUNC4 (eval);
}