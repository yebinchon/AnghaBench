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
struct iconv_fallbacks {int /*<<< orphan*/ * data; int /*<<< orphan*/  wc_to_mb_fallback; int /*<<< orphan*/  mb_to_uc_fallback; int /*<<< orphan*/  mb_to_wc_fallback; int /*<<< orphan*/  uc_to_mb_fallback; } ;
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  ICONV_SET_FALLBACKS ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,char*,char*) ; 
 int cflag ; 
 char* citrus_common ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 char FUNC3 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iconv_fallbacks*) ; 
 int iflag ; 
 int lflag ; 
 int /*<<< orphan*/  long_options ; 
 int /*<<< orphan*/  mb_to_uc_fb ; 
 int /*<<< orphan*/  mb_to_wc_fb ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  optstr ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int rflag ; 
 int tflag ; 
 int /*<<< orphan*/  uc_to_mb_fb ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  wc_to_mb_fb ; 

int
FUNC9 (int argc, char *argv[])
{
	struct iconv_fallbacks fbs;
	iconv_t cd;
	char *tocode;
	char c;

	while (((c = FUNC3(argc, argv, optstr, long_options, NULL)) != -1)) {
		switch (c) {
		case 'c':
			cflag = true;
			break;
		case 'd':
			dflag = true;
			break;
		case 'i':
			iflag = true;
			break;
		case 'l':
			lflag = true;
			break;
		case 'r':
			rflag = true;
			break;
		case 't':
			tflag = true;
			break;
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC8();

	fbs.uc_to_mb_fallback = uc_to_mb_fb;
	fbs.mb_to_wc_fallback = mb_to_wc_fb;
	fbs.mb_to_uc_fallback = mb_to_uc_fb;
	fbs.wc_to_mb_fallback = wc_to_mb_fb;
	fbs.data = NULL;

	if (argc == 2) {
		FUNC0(&tocode, "%s%s%s", argv[1], tflag ? "//TRASNLIT" : "",
		    iflag ? "//IGNORE" : "");

		if ((cd = FUNC5(tocode, argv[0])) == (iconv_t)-1)
			FUNC2(1, NULL);
		if (dflag) {
			if (FUNC6(cd, ICONV_SET_FALLBACKS, &fbs) != 0)
				FUNC2(1, NULL);
		}
		FUNC1(cd, false);
	} else if (rflag) {
		FUNC0(&tocode, "%s%s%s", argv[0], tflag ? "//TRANSLIT" : "",
		    iflag ? "//IGNORE" : "");

		if ((cd = FUNC5(tocode, "UTF-32LE")) == (iconv_t)-1)
			FUNC2(1, NULL);
		if (dflag && FUNC6(cd, ICONV_SET_FALLBACKS, &fbs) != 0)
			FUNC2(1, NULL);
		if (cflag) {
			FUNC7("# $FreeBSD$\n\n");
			FUNC7("TYPE\t\tROWCOL\n");
			FUNC7("NAME\t\tUCS/%s\n", argv[0]);
			FUNC7("%s", citrus_common);
		}
		FUNC1(cd, true);
	} else {
		if ((cd = FUNC5("UTF-32LE//TRANSLIT", argv[0])) == (iconv_t)-1)
			FUNC2(1, NULL);
		if (dflag && (FUNC6(cd, ICONV_SET_FALLBACKS, &fbs) != 0))
			FUNC2(1, NULL);
		if (cflag) {
			FUNC7("# $FreeBSD$\n\n");
			FUNC7("TYPE\t\tROWCOL\n");
			FUNC7("NAME\t\t%s/UCS\n", argv[0]);
			FUNC7("%s", citrus_common);
                }
		FUNC1(cd, false);
	}

	if (FUNC4(cd) != 0)
		FUNC2(1, NULL);

	return (EXIT_SUCCESS);
}