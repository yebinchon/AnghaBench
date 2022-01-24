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
 int ONEOSEPONLY ; 
 int RIGHTADJUST ; 
 int* colwidths ; 
 int flags ; 
 char osep ; 
 int /*<<< orphan*/  FUNC0 (char) ; 

__attribute__((used)) static void
FUNC1(char *s, int col)
{
	int n;
	char *p = s;

	while (*p)
		p++;
	n = (flags & ONEOSEPONLY ? 1 : colwidths[col] - (p - s));
	if (flags & RIGHTADJUST)
		while (n-- > 0)
			FUNC0(osep);
	for (p = s; *p; p++)
		FUNC0(*p);
	while (n-- > 0)
		FUNC0(osep);
}