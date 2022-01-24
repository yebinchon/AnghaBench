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
typedef  int /*<<< orphan*/  PORT ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,size_t,size_t) ; 
 int /*<<< orphan*/ ** FUNC7 (size_t) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC10 (int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char *argv[])
{
	FILE * f;
	char * line;
	size_t linelen;
	PORT ** pp;	/* Array of pointers to PORTs */
	PORT * tmp;
	size_t pplen;	/* Allocated size of array */
	size_t i;

	if (argc != 2)
		FUNC13();
	if ((f = FUNC5(argv[1], "r")) == NULL)
		FUNC0(1, "fopen(%s)", argv[1]);

	pplen = 1024;
	if ((pp = FUNC7(pplen * sizeof(PORT *))) == NULL)
		FUNC0(1, "malloc(pp)");

	/*
	 * 1. Suck in all the data, splitting into fields.
	 */
	for(i = 0; (line = FUNC4(f, &linelen)) != NULL; i++) {
		if (line[linelen - 1] != '\n')
			FUNC1(1, "Unterminated line encountered");
		line[linelen - 1] = 0;

		/* Enlarge array if needed */
		if (i >= pplen) {
			pplen *= 2;
			if ((pp = FUNC10(pp, pplen * sizeof(PORT *))) == NULL)
				FUNC0(1, "realloc(pp)");
		}

		pp[i] = FUNC8(line);
	}
	/* Reallocate to the correct size */
	pplen = i;
	if ((pp = FUNC10(pp, pplen * sizeof(PORT *))) == NULL)
		FUNC0(1, "realloc(pp)");

	/* Make sure we actually reached the EOF */
	if (!FUNC3(f))
		FUNC0(1, "fgetln(%s)", argv[1]);
	/* Close the describes file */
	if (FUNC2(f) != 0)
		FUNC0(1, "fclose(%s)", argv[1]);

	/*
	 * 1a. If there are no ports, there is no INDEX.
	 */
	if (pplen == 0)
		return 0;

	/*
	 * 2. Sort the ports according to port directory.
	 */
	for (i = pplen; i > 0; i--)
		FUNC6(pp, pplen, i - 1);	/* Build a heap */
	for (i = pplen - 1; i > 0; i--) {
		tmp = pp[0];			/* Extract elements */
		pp[0] = pp[i];
		pp[i] = tmp;
		FUNC6(pp, i, 0);		/* And re-heapify */
	}

	/*
	 * 3. Using a binary search, translate each dependency from a
	 * port directory name into a pointer to a port.
	 */
	for (i = 0; i < pplen; i++)
		FUNC12(pp, pplen, pp[i]);

	/*
	 * 4. Recursively follow dependencies, expanding the lists of
	 * pointers as needed (using realloc).
	 */
	for (i = 0; i < pplen; i++)
		FUNC11(pp[i]);

	/*
	 * 5. Iterate through the ports, printing them out (remembering
	 * to list the dependent ports in alphabetical order).
	 */
	for (i = 0; i < pplen; i++)
		FUNC9(pp[i]);

	return 0;
}