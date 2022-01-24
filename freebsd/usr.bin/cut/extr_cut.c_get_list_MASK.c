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
 size_t autostart ; 
 size_t autostop ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 size_t maxval ; 
 int /*<<< orphan*/  FUNC2 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 char* positions ; 
 char* FUNC4 (char**,char*) ; 
 size_t FUNC5 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC6(char *list)
{
	size_t setautostart, start, stop;
	char *pos;
	char *p;

	/*
	 * set a byte in the positions array to indicate if a field or
	 * column is to be selected; use +1, it's 1-based, not 0-based.
	 * Numbers and number ranges may be overlapping, repeated, and in
	 * any order. We handle "-3-5" although there's no real reason to.
	 */
	for (; (p = FUNC4(&list, ", \t")) != NULL;) {
		setautostart = start = stop = 0;
		if (*p == '-') {
			++p;
			setautostart = 1;
		}
		if (FUNC1((unsigned char)*p)) {
			start = stop = FUNC5(p, &p, 10);
			if (setautostart && start > autostart)
				autostart = start;
		}
		if (*p == '-') {
			if (FUNC1((unsigned char)p[1]))
				stop = FUNC5(p + 1, &p, 10);
			if (*p == '-') {
				++p;
				if (!autostop || autostop > stop)
					autostop = stop;
			}
		}
		if (*p)
			FUNC0(1, "[-bcf] list: illegal list value");
		if (!stop || !start)
			FUNC0(1, "[-bcf] list: values may not include zero");
		if (maxval < stop) {
			maxval = stop;
			FUNC3(maxval + 1);
		}
		for (pos = positions + start; start++ <= stop; *pos++ = 1);
	}

	/* overlapping ranges */
	if (autostop && maxval > autostop) {
		maxval = autostop;
		FUNC3(maxval + 1);
	}

	/* reversed range with autostart */
	if (maxval < autostart) {
		maxval = autostart;
		FUNC3(maxval + 1);
	}

	/* set autostart */
	if (autostart)
		FUNC2(positions + 1, '1', autostart);
}