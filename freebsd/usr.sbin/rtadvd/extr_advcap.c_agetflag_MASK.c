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
 char* FUNC2 (char*) ; 

int
FUNC3(char *id)
{
	char *bp = tbuf;

	for (;;) {
		bp = FUNC2(bp);
		if (!*bp)
			return (0);
		if (FUNC1(bp, id, FUNC0(id)) == 0) {
			bp += FUNC0(id);
			if (!*bp || *bp == ':')
				return (1);
			else if (*bp == '@')
				return (0);
		}
	}
}