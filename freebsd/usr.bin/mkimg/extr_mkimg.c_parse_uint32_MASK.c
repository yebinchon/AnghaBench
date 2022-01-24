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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UINT_MAX ; 
 int errno ; 
 int FUNC0 (char const*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC1(uint32_t *valp, uint32_t min, uint32_t max, const char *arg)
{
	uint64_t val;

	if (FUNC0(arg, &val) == -1)
		return (errno);
	if (val > UINT_MAX || val < (uint64_t)min || val > (uint64_t)max)
		return (EINVAL);
	*valp = (uint32_t)val;
	return (0);
}