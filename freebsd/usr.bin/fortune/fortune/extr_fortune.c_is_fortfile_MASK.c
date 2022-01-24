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
 int /*<<< orphan*/  All_forts ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 scalar_t__ Fortunes_only ; 
 int Offend ; 
 int /*<<< orphan*/  R_OK ; 
 int TRUE ; 
 scalar_t__ WriteToDisk ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static int
FUNC9(const char *file, char **datp, char **posp, int check_for_offend)
{
	int	i;
	const char	*sp;
	char	*datfile;
	static const char *suflist[] = {
		/* list of "illegal" suffixes" */
		"dat", "pos", "c", "h", "p", "i", "f",
		"pas", "ftn", "ins.c", "ins,pas",
		"ins.ftn", "sml",
		NULL
	};

	FUNC0(2, (stderr, "is_fortfile(%s) returns ", file));

	/*
	 * Preclude any -o files for offendable people, and any non -o
	 * files for completely offensive people.
	 */
	if (check_for_offend && !All_forts) {
		i = FUNC6(file);
		if (Offend ^ (file[i - 2] == '-' && file[i - 1] == 'o')) {
			FUNC0(2, (stderr, "FALSE (offending file)\n"));
			return (FALSE);
		}
	}

	if ((sp = FUNC8(file, '/')) == NULL)
		sp = file;
	else
		sp++;
	if (*sp == '.') {
		FUNC0(2, (stderr, "FALSE (file starts with '.')\n"));
		return (FALSE);
	}
	if (Fortunes_only && FUNC7(sp, "fortunes", 8) != 0) {
		FUNC0(2, (stderr, "FALSE (check fortunes only)\n"));
		return (FALSE);
	}
	if ((sp = FUNC8(sp, '.')) != NULL) {
		sp++;
		for (i = 0; suflist[i] != NULL; i++)
			if (FUNC5(sp, suflist[i]) == 0) {
				FUNC0(2, (stderr, "FALSE (file has suffix \".%s\")\n", sp));
				return (FALSE);
			}
	}

	datfile = FUNC2(file, (unsigned int) (FUNC6(file) + 4)); /* +4 for ".dat" */
	FUNC4(datfile, ".dat");
	if (FUNC1(datfile, R_OK) < 0) {
		FUNC0(2, (stderr, "FALSE (no readable \".dat\" file)\n"));
		FUNC3(datfile);
		return (FALSE);
	}
	if (datp != NULL)
		*datp = datfile;
	else
		FUNC3(datfile);
	if (posp != NULL) {
		if (WriteToDisk) {
			*posp = FUNC2(file, (unsigned int) (FUNC6(file) + 4)); /* +4 for ".dat" */
			FUNC4(*posp, ".pos");
		}
		else {
			*posp = NULL;
		}
	}
	FUNC0(2, (stderr, "TRUE\n"));

	return (TRUE);
}