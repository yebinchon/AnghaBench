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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 char* tbuf ; 
 char* FUNC2 (char*,char**) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(char *id, char **area)
{
	char *bp = tbuf;

	for (;;) {
		bp = FUNC3(bp);
		if (!*bp)
			return (0);
		if (FUNC1(bp, id, FUNC0(id)) != 0)
			continue;
		bp += FUNC0(id);
		if (*bp == '@')
			return (0);
		if (*bp != '=')
			continue;
		bp++;
		return (FUNC2(bp, area));
	}
}