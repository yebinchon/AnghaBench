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
	const char *time, *p;

	if (len < FUNC1(" 07:01:32") || line[len-FUNC1(":32")] != ':')
		return 0;
	p = time = line + len - FUNC1(" 07:01:32");

	/* Permit 1-digit hours? */
	if (*p++ != ' ' ||
	    !FUNC0(*p++) || !FUNC0(*p++) || *p++ != ':' ||
	    !FUNC0(*p++) || !FUNC0(*p++) || *p++ != ':' ||
	    !FUNC0(*p++) || !FUNC0(*p++))	/* Not a time. */
		return 0;

	return line + len - time;
}