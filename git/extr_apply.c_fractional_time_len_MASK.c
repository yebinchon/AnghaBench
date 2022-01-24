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
 size_t FUNC1 (char const*,int) ; 

__attribute__((used)) static size_t FUNC2(const char *line, size_t len)
{
	const char *p;
	size_t n;

	/* Expected format: 19:41:17.620000023 */
	if (!len || !FUNC0(line[len - 1]))
		return 0;
	p = line + len - 1;

	/* Fractional seconds. */
	while (p > line && FUNC0(*p))
		p--;
	if (*p != '.')
		return 0;

	/* Hours, minutes, and whole seconds. */
	n = FUNC1(line, p - line);
	if (!n)
		return 0;

	return line + len - p + n;
}