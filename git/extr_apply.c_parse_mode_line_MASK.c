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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 unsigned int FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC4(const char *line, int linenr, unsigned int *mode)
{
	char *end;
	*mode = FUNC3(line, &end, 8);
	if (end == line || !FUNC2(*end))
		return FUNC1(FUNC0("invalid mode on line %d: %s"), linenr, line);
	return 0;
}