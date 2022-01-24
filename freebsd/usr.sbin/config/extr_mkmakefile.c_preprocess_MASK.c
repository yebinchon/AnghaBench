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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static bool
FUNC2(char *line, char *result)
{
	char *s;

	/* Strip any comments */
	if ((s = FUNC1(line, '#')) != NULL)
		*s = '\0';
	FUNC0(result, line);
	/* Return true if it's non-empty */
	return (*result != '\0');
}