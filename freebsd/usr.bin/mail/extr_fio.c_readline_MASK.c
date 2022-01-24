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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 

int
FUNC3(FILE *ibuf, char *linebuf, int linesize)
{
	int n;

	FUNC0(ibuf);
	if (FUNC1(linebuf, linesize, ibuf) == NULL)
		return (-1);
	n = FUNC2(linebuf);
	if (n > 0 && linebuf[n - 1] == '\n')
		linebuf[--n] = '\0';
	if (n > 0 && linebuf[n - 1] == '\r')
		linebuf[--n] = '\0';
	return (n);
}