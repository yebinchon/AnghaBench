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
typedef  int off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int) ; 
 scalar_t__ rflag ; 

int
FUNC7(FILE *fp, const char *fn, off_t off)
{
	int ch, len, tlen;
	char *ep, *p, *t;
	int wrap;
	char *sp;

	if ((sp = p = FUNC6(off)) == NULL)
		FUNC1(1, "malloc");

	for (wrap = 0, ep = p + off; (ch = FUNC4(fp)) != EOF;) {
		*p = ch;
		if (++p == ep) {
			wrap = 1;
			p = sp;
		}
	}
	if (FUNC2(fp)) {
		FUNC5(fn);
		FUNC3(sp);
		return 1;
	}

	if (rflag) {
		for (t = p - 1, len = 0; t >= sp; --t, ++len)
			if (*t == '\n' && len) {
				FUNC0(t + 1, len);
				len = 0;
		}
		if (wrap) {
			tlen = len;
			for (t = ep - 1, len = 0; t >= p; --t, ++len)
				if (*t == '\n') {
					if (len) {
						FUNC0(t + 1, len);
						len = 0;
					}
					if (tlen) {
						FUNC0(sp, tlen);
						tlen = 0;
					}
				}
			if (len)
				FUNC0(t + 1, len);
			if (tlen)
				FUNC0(sp, tlen);
		}
	} else {
		if (wrap && (len = ep - p))
			FUNC0(p, len);
		len = p - sp;
		if (len)
			FUNC0(sp, len);
	}

	FUNC3(sp);
	return 0;
}