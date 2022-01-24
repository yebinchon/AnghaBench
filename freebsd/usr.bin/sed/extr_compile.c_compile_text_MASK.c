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
typedef  int /*<<< orphan*/  lbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char*,int) ; 

__attribute__((used)) static char *
FUNC5(void)
{
	int asize, esc_nl, size;
	char *text, *p, *op, *s;
	char lbuf[_POSIX2_LINE_MAX + 1];

	asize = 2 * _POSIX2_LINE_MAX + 1;
	if ((text = FUNC3(asize)) == NULL)
		FUNC2(1, "malloc");
	size = 0;
	while (FUNC1(lbuf, sizeof(lbuf), NULL) != NULL) {
		op = s = text + size;
		p = lbuf;
#ifdef LEGACY_BSDSED_COMPAT
		EATSPACE();
#endif
		for (esc_nl = 0; *p != '\0'; p++) {
			if (*p == '\\' && p[1] != '\0' && *++p == '\n')
				esc_nl = 1;
			*s++ = *p;
		}
		size += s - op;
		if (!esc_nl) {
			*s = '\0';
			break;
		}
		if (asize - size < _POSIX2_LINE_MAX + 1) {
			asize *= 2;
			if ((text = FUNC4(text, asize)) == NULL)
				FUNC2(1, "realloc");
		}
	}
	text[size] = '\0';
	if ((p = FUNC4(text, size + 1)) == NULL)
		FUNC2(1, "realloc");
	return (p);
}