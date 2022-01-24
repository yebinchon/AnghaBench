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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 

int
FUNC4(FILE *obuf, char *linebuf, int outlf)
{
	int c;

	c = FUNC3(linebuf);
	(void)FUNC2(linebuf, sizeof(*linebuf), c, obuf);
	if (outlf) {
		FUNC1(obuf, "\n");
		c++;
	}
	if (FUNC0(obuf))
		return (-1);
	return (c);
}