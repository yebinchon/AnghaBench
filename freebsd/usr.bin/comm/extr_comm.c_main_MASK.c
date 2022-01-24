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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,char**,char*) ; 
 int iflag ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*,char**,size_t*) ; 
 int FUNC11 (char*,char*) ; 
 char** tabs ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC14(int argc, char *argv[])
{
	int comp, read1, read2;
	int ch, flag1, flag2, flag3;
	FILE *fp1, *fp2;
	const char *col1, *col2, *col3;
	size_t line1len, line2len;
	char *line1, *line2;
	ssize_t n1, n2;
	wchar_t *tline1, *tline2;
	const char **p;

	(void) FUNC9(LC_ALL, "");

	flag1 = flag2 = flag3 = 1;

	while ((ch = FUNC7(argc, argv, "123i")) != -1)
		switch(ch) {
		case '1':
			flag1 = 0;
			break;
		case '2':
			flag2 = 0;
			break;
		case '3':
			flag3 = 0;
			break;
		case 'i':
			iflag = 1;
			break;
		case '?':
		default:
			FUNC12();
		}
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC12();

	fp1 = FUNC4(argv[0]);
	fp2 = FUNC4(argv[1]);

	/* for each column printed, add another tab offset */
	p = tabs;
	col1 = col2 = col3 = NULL;
	if (flag1)
		col1 = *p++;
	if (flag2)
		col2 = *p++;
	if (flag3)
		col3 = *p;

	line1len = line2len = 0;
	line1 = line2 = NULL;
	n1 = n2 = -1;

	for (read1 = read2 = 1;;) {
		/* read next line, check for EOF */
		if (read1) {
			n1 = FUNC6(&line1, &line1len, fp1);
			if (n1 < 0 && FUNC3(fp1))
				FUNC1(1, "%s", argv[0]);
			if (n1 > 0 && line1[n1 - 1] == '\n')
				line1[n1 - 1] = '\0';

		}
		if (read2) {
			n2 = FUNC6(&line2, &line2len, fp2);
			if (n2 < 0 && FUNC3(fp2))
				FUNC1(1, "%s", argv[1]);
			if (n2 > 0 && line2[n2 - 1] == '\n')
				line2[n2 - 1] = '\0';
		}

		/* if one file done, display the rest of the other file */
		if (n1 < 0) {
			if (n2 >= 0 && col2 != NULL)
				FUNC10(fp2, argv[1], col2, &line2, &line2len);
			break;
		}
		if (n2 < 0) {
			if (n1 >= 0 && col1 != NULL)
				FUNC10(fp1, argv[0], col1, &line1, &line1len);
			break;
		}

		tline2 = NULL;
		if ((tline1 = FUNC0(line1)) != NULL)
			tline2 = FUNC0(line2);
		if (tline1 == NULL || tline2 == NULL)
			comp = FUNC11(line1, line2);
		else
			comp = FUNC13(tline1, tline2);
		if (tline1 != NULL)
			FUNC5(tline1);
		if (tline2 != NULL)
			FUNC5(tline2);

		/* lines are the same */
		if (!comp) {
			read1 = read2 = 1;
			if (col3 != NULL)
				(void)FUNC8("%s%s\n", col3, line1);
			continue;
		}

		/* lines are different */
		if (comp < 0) {
			read1 = 1;
			read2 = 0;
			if (col1 != NULL)
				(void)FUNC8("%s%s\n", col1, line1);
		} else {
			read1 = 0;
			read2 = 1;
			if (col2 != NULL)
				(void)FUNC8("%s%s\n", col2, line2);
		}
	}
	FUNC2(0);
}