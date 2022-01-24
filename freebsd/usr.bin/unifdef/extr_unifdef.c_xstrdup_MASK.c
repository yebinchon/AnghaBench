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
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*) ; 

__attribute__((used)) static const char *
FUNC4(const char *start, const char *end)
{
	size_t n;
	char *s;

	if (end < start) FUNC0(); /* bug */
	n = (size_t)(end - start) + 1;
	s = FUNC2(n);
	if (s == NULL)
		FUNC1(2, "malloc");
	FUNC3(s, n, "%s", start);
	return (s);
}