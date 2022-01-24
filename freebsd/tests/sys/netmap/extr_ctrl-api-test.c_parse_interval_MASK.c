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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC3(const char *arg, int *j, int *k)
{
	const char *scan = arg;
	char *rest;

	*j = 0;
	*k = -1;
	if (*scan == '-') {
		scan++;
		goto get_k;
	}
	if (!FUNC1(*scan))
		goto err;
	*k = FUNC2(scan, &rest, 10);
	*j = *k - 1;
	scan = rest;
	if (*scan == '-') {
		*k = -1;
		scan++;
	}
get_k:
	if (*scan == '\0')
		return 0;
	if (!FUNC1(*scan))
		goto err;
	*k = FUNC2(scan, &rest, 10);
	scan = rest;
	if (!(*scan == '\0'))
		goto err;

	return 0;

err:
	FUNC0(stderr, "syntax error in '%s', must be num[-[num]] or -[num]\n", arg);
	return -1;
}