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
struct gcov_info {int dummy; } ;

/* Variables and functions */
 unsigned int GCOV_COUNTERS ; 
 scalar_t__ FUNC0 (struct gcov_info*,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC1(struct gcov_info *info)
{
	unsigned int i;
	unsigned int result = 0;

	for (i = 0; i < GCOV_COUNTERS; i++) {
		if (FUNC0(info, i))
			result++;
	}
	return (result);
}