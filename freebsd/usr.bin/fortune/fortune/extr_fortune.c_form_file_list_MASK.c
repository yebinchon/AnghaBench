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
 int FALSE ; 
 int /*<<< orphan*/  File_list ; 
 int /*<<< orphan*/  File_tail ; 
 scalar_t__ Find_files ; 
 char* Fortune_path ; 
 char** Fortune_path_arr ; 
 int Fortunes_only ; 
 int NO_PROB ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(char **files, int file_cnt)
{
	int	i, percent;
	char	*sp;
	char	**pstr;

	if (file_cnt == 0) {
		if (Find_files) {
			Fortunes_only = TRUE;
			pstr = Fortune_path_arr;
			i = 0;
			while (*pstr) {
				i += FUNC0(NO_PROB, *pstr++, NULL,
					      &File_list, &File_tail, NULL);
			}
			Fortunes_only = FALSE;
			if (!i) {
				FUNC1(stderr, "No fortunes found in %s.\n",
				    Fortune_path);
			}
			return (i != 0);
		} else {
			pstr = Fortune_path_arr;
			i = 0;
			while (*pstr) {
				i += FUNC0(NO_PROB, "fortunes", *pstr++,
					      &File_list, &File_tail, NULL);
			}
			if (!i) {
				FUNC1(stderr, "No fortunes found in %s.\n",
				    Fortune_path);
			}
			return (i != 0);
		}
	}
	for (i = 0; i < file_cnt; i++) {
		percent = NO_PROB;
		if (!FUNC2((unsigned char)files[i][0]))
			sp = files[i];
		else {
			percent = 0;
			for (sp = files[i]; FUNC2((unsigned char)*sp); sp++)
				percent = percent * 10 + *sp - '0';
			if (percent > 100) {
				FUNC1(stderr, "percentages must be <= 100\n");
				return (FALSE);
			}
			if (*sp == '.') {
				FUNC1(stderr, "percentages must be integers\n");
				return (FALSE);
			}
			/*
			 * If the number isn't followed by a '%', then
			 * it was not a percentage, just the first part
			 * of a file name which starts with digits.
			 */
			if (*sp != '%') {
				percent = NO_PROB;
				sp = files[i];
			}
			else if (*++sp == '\0') {
				if (++i >= file_cnt) {
					FUNC1(stderr, "percentages must precede files\n");
					return (FALSE);
				}
				sp = files[i];
			}
		}
		if (FUNC3(sp, "all") == 0) {
			pstr = Fortune_path_arr;
			i = 0;
			while (*pstr) {
				i += FUNC0(NO_PROB, *pstr++, NULL,
					      &File_list, &File_tail, NULL);
			}
			if (!i) {
				FUNC1(stderr, "No fortunes found in %s.\n",
				    Fortune_path);
				return (FALSE);
			}
		} else if (!FUNC0(percent, sp, NULL, &File_list,
				     &File_tail, NULL)) {
 			return (FALSE);
		}
	}

	return (TRUE);
}