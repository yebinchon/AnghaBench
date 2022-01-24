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
 scalar_t__ FUNC0 (char) ; 
 char FUNC1 (char const) ; 

__attribute__((used)) static int
FUNC2(const char *line, const char *sender)
{
	char ch, pch, first;
	const char *p, *t;

	for (first = *sender++;;) {
		if (FUNC0(ch = *line))
			return(0);
		++line;
		ch = FUNC1(ch);
		if (ch != first)
			continue;
		for (p = sender, t = line;;) {
			if (!(pch = *p++))
				return(1);
			ch = FUNC1(*t);
			t++;
			if (ch != pch)
				break;
		}
	}
	/* NOTREACHED */
}