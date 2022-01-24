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
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*) ; 

__attribute__((used)) static int FUNC2(const char *p, int *p_before, int *p_after)
{
	static const char digits[] = "0123456789";
	const char *q, *r;
	int n;

	q = p + 4;
	n = FUNC1(q, digits);
	if (q[n] == ',') {
		q += n + 1;
		n = FUNC1(q, digits);
	}
	if (n == 0 || q[n] != ' ' || q[n+1] != '+')
		return 0;

	r = q + n + 2;
	n = FUNC1(r, digits);
	if (r[n] == ',') {
		r += n + 1;
		n = FUNC1(r, digits);
	}
	if (n == 0)
		return 0;

	*p_before = FUNC0(q);
	*p_after = FUNC0(r);
	return 1;
}