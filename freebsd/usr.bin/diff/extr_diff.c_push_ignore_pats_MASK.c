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
 char* ignore_pats ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*,int,size_t) ; 
 char* FUNC3 (char*) ; 

void
FUNC4(char *pattern)
{
	size_t len;

	if (ignore_pats == NULL)
		ignore_pats = FUNC3(pattern);
	else {
		/* old + "|" + new + NUL */
		len = FUNC1(ignore_pats) + FUNC1(pattern) + 2;
		ignore_pats = FUNC2(ignore_pats, 1, len);
		FUNC0(ignore_pats, "|", len);
		FUNC0(ignore_pats, pattern, len);
	}
}