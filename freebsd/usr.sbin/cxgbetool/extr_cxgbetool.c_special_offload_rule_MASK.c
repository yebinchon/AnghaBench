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
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC2(char *str)
{

	/* skip leading whitespaces */
	while (FUNC0(*str))
		str++;

	/* check for special strings: "-", "all", "any" */
	if (*str == '-') {
		str++;
	} else if (!FUNC1(str, "all", 3) || !FUNC1(str, "any", 3)) {
		str += 3;
	} else {
		return (0);
	}

	/* skip trailing whitespaces */
	while (FUNC0(*str))
		str++;

	return (*str == '\0');
}