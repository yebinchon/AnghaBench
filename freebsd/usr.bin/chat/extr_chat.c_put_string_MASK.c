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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ alarmed ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,int) ; 
 scalar_t__ quiet ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

int
FUNC7(char *s)
{
    quiet = 0;
    s = FUNC3(s, 1);

    if (verbose)
        FUNC2("send (%v)", quiet ? "??????" : s);

    FUNC0(timeout); alarmed = 0;

    while (*s) {
	char c = *s++;

	if (c != '\\') {
	    if (!FUNC6 (c))
		return 0;
	    continue;
	}

	c = *s++;
	switch (c) {
	case 'd':
	    FUNC4(1);
	    break;

	case 'K':
	    FUNC1();
	    break;

	case 'p':
	    FUNC5(10000); 	/* 1/100th of a second (arg is microseconds) */
	    break;

	default:
	    if (!FUNC6 (c))
		return 0;
	    break;
	}
    }

    FUNC0(0);
    alarmed = 0;
    return (1);
}