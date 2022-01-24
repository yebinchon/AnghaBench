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
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static size_t FUNC2(const char *line, size_t len)
{
	const char *date, *p;

	if (len < FUNC1("72-02-05") || line[len-FUNC1("-05")] != '-')
		return 0;
	p = date = line + len - FUNC1("72-02-05");

	if (!FUNC0(*p++) || !FUNC0(*p++) || *p++ != '-' ||
	    !FUNC0(*p++) || !FUNC0(*p++) || *p++ != '-' ||
	    !FUNC0(*p++) || !FUNC0(*p++))	/* Not a date. */
		return 0;

	if (date - line >= FUNC1("19") &&
	    FUNC0(date[-1]) && FUNC0(date[-2]))	/* 4-digit year */
		date -= FUNC1("19");

	return line + len - date;
}