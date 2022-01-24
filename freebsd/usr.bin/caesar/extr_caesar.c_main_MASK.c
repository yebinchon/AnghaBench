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
 int LINELENGTH ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (double) ; 
 char* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int* stdf ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(int argc, char **argv)
{
	int ch, dot, i, nread, winnerdot = 0;
	char *inbuf;
	int obs[26], try, winner;

	if (argc > 1)
		FUNC9(argv[1]);

	if (!(inbuf = FUNC8((size_t)LINELENGTH))) {
		(void)FUNC3(stderr, "caesar: out of memory.\n");
		FUNC2(1);
	}

	/* adjust frequency table to weight low probs REAL low */
	for (i = 0; i < 26; ++i)
		stdf[i] = FUNC7(stdf[i]) + FUNC7(26.0 / 100.0);

	/* zero out observation table */
	FUNC1(obs, 26 * sizeof(int));

	if ((nread = FUNC11(STDIN_FILENO, inbuf, (size_t)LINELENGTH)) < 0) {
		(void)FUNC3(stderr, "caesar: %s\n", FUNC12(errno));
		FUNC2(1);
	}
	for (i = nread; i--;) {
		ch = (unsigned char) inbuf[i];
		if (FUNC4(ch)) {
			if (FUNC5(ch))
				++obs[ch - 'a'];
			else if (FUNC6(ch))
				++obs[ch - 'A'];
		}
	}

	/*
	 * now "dot" the freqs with the observed letter freqs
	 * and keep track of best fit
	 */
	for (try = winner = 0; try < 26; ++try) { /* += 13) { */
		dot = 0;
		for (i = 0; i < 26; i++)
			dot += obs[i] * stdf[(i + try) % 26];
		/* initialize winning score */
		if (try == 0)
			winnerdot = dot;
		if (dot > winnerdot) {
			/* got a new winner! */
			winner = try;
			winnerdot = dot;
		}
	}

	for (;;) {
		for (i = 0; i < nread; ++i) {
			ch = (unsigned char) inbuf[i];
			FUNC10(FUNC0(ch, winner));
		}
		if (nread < LINELENGTH)
			break;
		if ((nread = FUNC11(STDIN_FILENO, inbuf, (size_t)LINELENGTH)) < 0) {
			(void)FUNC3(stderr, "caesar: %s\n", FUNC12(errno));
			FUNC2(1);
		}
	}
	FUNC2(0);
}