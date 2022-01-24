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
typedef  scalar_t__ uid_t ;

/* Variables and functions */
 size_t TOP_MAX_UIDS ; 

__attribute__((used)) static int
FUNC0(uid_t needle, int *haystack)
{
	size_t i = 0;

	for (; i < TOP_MAX_UIDS; ++i)
		if ((uid_t)haystack[i] == needle)
			return 1;
	return (0);
}