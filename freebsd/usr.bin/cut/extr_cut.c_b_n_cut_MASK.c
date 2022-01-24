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
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  autostop ; 
 char* FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 size_t maxval ; 
 int FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int* positions ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int
FUNC6(FILE *fp, const char *fname)
{
	size_t col, i, lbuflen;
	char *lbuf;
	int canwrite, clen, warned;
	mbstate_t mbs;

	FUNC3(&mbs, 0, sizeof(mbs));
	warned = 0;
	while ((lbuf = FUNC0(fp, &lbuflen)) != NULL) {
		for (col = 0; lbuflen > 0; col += clen) {
			if ((clen = FUNC2(lbuf, lbuflen, &mbs)) < 0) {
				if (!warned) {
					FUNC5("%s", fname);
					warned = 1;
				}
				FUNC3(&mbs, 0, sizeof(mbs));
				clen = 1;
			}
			if (clen == 0 || *lbuf == '\n')
				break;
			if (col < maxval && !positions[1 + col]) {
				/*
				 * Print the character if (1) after an initial
				 * segment of un-selected bytes, the rest of
				 * it is selected, and (2) the last byte is
				 * selected.
				 */
				i = col;
				while (i < col + clen && i < maxval &&
				    !positions[1 + i])
					i++;
				canwrite = i < col + clen;
				for (; i < col + clen && i < maxval; i++)
					canwrite &= positions[1 + i];
				if (canwrite)
					FUNC1(lbuf, 1, clen, stdout);
			} else {
				/*
				 * Print the character if all of it has
				 * been selected.
				 */
				canwrite = 1;
				for (i = col; i < col + clen; i++)
					if ((i >= maxval && !autostop) ||
					    (i < maxval && !positions[1 + i])) {
						canwrite = 0;
						break;
					}
				if (canwrite)
					FUNC1(lbuf, 1, clen, stdout);
			}
			lbuf += clen;
			lbuflen -= clen;
		}
		if (lbuflen > 0)
			FUNC4('\n');
	}
	return (warned);
}