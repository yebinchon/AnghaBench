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
typedef  int wchar_t ;
typedef  scalar_t__ uintmax_t ;
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 unsigned char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MB_LEN_MAX ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ SIZE_T_MAX ; 
 unsigned char* _path_words ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int fflag ; 
 scalar_t__ FUNC4 (int,struct stat*) ; 
 int FUNC5 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 int FUNC6 (int*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char *argv[])
{
	struct stat sb;
	int ch, fd, match;
	wchar_t termchar;
	unsigned char *back, *front;
	unsigned const char *file;
	wchar_t *key;

	(void) FUNC11(LC_CTYPE, "");

	file = _path_words;
	termchar = L'\0';
	while ((ch = FUNC5(argc, argv, "+adft:", longopts, NULL)) != -1)
		switch(ch) {
		case 'a':
			/* COMPATIBILITY */
			break;
		case 'd':
			dflag = 1;
			break;
		case 'f':
			fflag = 1;
			break;
		case 't':
			if (FUNC7(&termchar, optarg, MB_LEN_MAX, NULL) !=
			    FUNC13(optarg))
				FUNC2(2, "invalid termination character");
			break;
		case '?':
		default:
			FUNC14();
		}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC14();
	if (argc == 1) 			/* But set -df by default. */
		dflag = fflag = 1;
	key = FUNC10(*argv++, termchar);
	if (argc >= 2)
		file = *argv++;

	match = 1;

	do {
		if ((fd = FUNC9(file, O_RDONLY, 0)) < 0 || FUNC4(fd, &sb))
			FUNC1(2, "%s", file);
		if ((uintmax_t)sb.st_size > (uintmax_t)SIZE_T_MAX)
			FUNC2(2, "%s: %s", file, FUNC12(EFBIG));
		if (sb.st_size == 0) {
			FUNC0(fd);
			continue;
		}
		if ((front = FUNC8(NULL, (size_t)sb.st_size, PROT_READ, MAP_SHARED, fd, (off_t)0)) == MAP_FAILED)
			FUNC1(2, "%s", file);
		back = front + sb.st_size;
		match *= (FUNC6(key, front, back));
		FUNC0(fd);
	} while (argc-- > 2 && (file = *argv++));

	FUNC3(match);
}