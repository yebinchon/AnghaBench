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
 size_t FUNC1 (char*) ; 

__attribute__((used)) static size_t FUNC2(const char *line, size_t len)
{
	const char *tz, *p;

	if (len < FUNC1(" +08:00") || line[len - FUNC1(":00")] != ':')
		return 0;
	tz = line + len - FUNC1(" +08:00");

	if (tz[0] != ' ' || (tz[1] != '+' && tz[1] != '-'))
		return 0;
	p = tz + 2;
	if (!FUNC0(*p++) || !FUNC0(*p++) || *p++ != ':' ||
	    !FUNC0(*p++) || !FUNC0(*p++))
		return 0;

	return line + len - tz;
}