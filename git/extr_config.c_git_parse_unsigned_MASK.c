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
typedef  int uintmax_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 scalar_t__ errno ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(const char *value, uintmax_t *ret, uintmax_t max)
{
	if (value && *value) {
		char *end;
		uintmax_t val;
		uintmax_t factor;

		errno = 0;
		val = FUNC1(value, &end, 0);
		if (errno == ERANGE)
			return 0;
		factor = FUNC0(end);
		if (!factor) {
			errno = EINVAL;
			return 0;
		}
		if (FUNC2(factor, val) ||
		    factor * val > max) {
			errno = ERANGE;
			return 0;
		}
		val *= factor;
		*ret = val;
		return 1;
	}
	errno = EINVAL;
	return 0;
}