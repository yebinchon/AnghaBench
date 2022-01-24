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
 long FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 
 long long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC2(const char *s, long *val, long long *vall)
{
	char *p;

	if (vall)
		*vall = FUNC1(s, &p, 0);
	else if (val)
		*val = FUNC0(s, &p, 0);
	else
		p = NULL;

	return (p);
}