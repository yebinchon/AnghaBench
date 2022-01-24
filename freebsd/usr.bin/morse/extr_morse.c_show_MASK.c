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
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ sflag ; 

__attribute__((used)) static void
FUNC1(const char *s)
{
	if (lflag) {
		FUNC0("%s ", s);
	} else if (sflag) {
		FUNC0(" %s\n", s);
	} else {
		for (; *s; ++s)
			FUNC0(" %s", *s == '.' ? *(s + 1) == '\0' ? "dit" :
			    "di" : "dah");
		FUNC0("\n");
	}
}