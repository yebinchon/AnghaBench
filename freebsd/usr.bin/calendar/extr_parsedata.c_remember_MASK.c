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
 int MAXCOUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void
FUNC2(int *rememberindex, int *y, int *m, int *d, char **ed, int yy, int mm,
    int dd, char *extra)
{
	static int warned = 0;

	if (*rememberindex >= MAXCOUNT - 1) {
		if (warned == 0)
			FUNC1("Index > %d, ignored", MAXCOUNT);
		warned++;
		return;
	}
	y[*rememberindex] = yy;
	m[*rememberindex] = mm;
	d[*rememberindex] = dd;
	if (extra != NULL)
		FUNC0(ed[*rememberindex], extra);
	else
		ed[*rememberindex][0] = '\0';
	*rememberindex += 1;
}