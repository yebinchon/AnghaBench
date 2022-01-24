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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char *
FUNC3(unsigned long fflags)
{
	static char *str = NULL;

	if (str != NULL)
		FUNC2(str);

	str = FUNC1(fflags);
	if (str == NULL)
		FUNC0(1, "fflagstostr");
	return (str);
}