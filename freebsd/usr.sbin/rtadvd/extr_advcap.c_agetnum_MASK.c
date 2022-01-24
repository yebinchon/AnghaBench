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
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 char* tbuf ; 
 char* FUNC3 (char*) ; 

int64_t
FUNC4(char *id)
{
	int64_t i;
	int base;
	char *bp = tbuf;

	for (;;) {
		bp = FUNC3(bp);
		if (*bp == 0)
			return (-1);
		if (FUNC2(bp, id, FUNC1(id)) != 0)
			continue;
		bp += FUNC1(id);
		if (*bp == '@')
			return (-1);
		if (*bp != '#')
			continue;
		bp++;
		base = 10;
		if (*bp == '0')
			base = 8;
		i = 0;
		while (FUNC0(*bp))
			i *= base, i += *bp++ - '0';
		return (i);
	}
}