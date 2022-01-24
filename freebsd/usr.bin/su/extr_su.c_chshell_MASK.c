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
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(const char *sh)
{
	int r;
	char *cp;

	r = 0;
	FUNC2();
	while ((cp = FUNC1()) != NULL && !r)
	    r = (FUNC3(cp, sh) == 0);
	FUNC0();
	return r;
}