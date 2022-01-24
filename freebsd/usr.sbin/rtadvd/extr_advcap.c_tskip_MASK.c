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
 int /*<<< orphan*/  FUNC0 (char) ; 

__attribute__((used)) static char *
FUNC1(char *bp)
{
	int dquote;

	dquote = 0;
	while (*bp) {
		switch (*bp) {
		case ':':
			if (!dquote)
				goto breakbreak;
			else
				bp++;
			break;
		case '\\':
			bp++;
			if (FUNC0(*bp)) {
				while (FUNC0(*bp++))
					;
			} else
				bp++;
		case '"':
			dquote = (dquote ? 1 : 0);
			bp++;
			break;
		default:
			bp++;
			break;
		}
	}
breakbreak:
	if (*bp == ':')
		bp++;
	return (bp);
}