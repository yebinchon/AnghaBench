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
 int EINVAL ; 
 int V_if_index ; 
 int V_nd6_defifindex ; 
 int /*<<< orphan*/ * V_nd6_defifp ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(int ifindex)
{
	int error = 0;

	if (ifindex < 0 || V_if_index < ifindex)
		return (EINVAL);
	if (ifindex != 0 && !FUNC0(ifindex))
		return (EINVAL);

	if (V_nd6_defifindex != ifindex) {
		V_nd6_defifindex = ifindex;
		if (V_nd6_defifindex > 0)
			V_nd6_defifp = FUNC0(V_nd6_defifindex);
		else
			V_nd6_defifp = NULL;

		/*
		 * Our current implementation assumes one-to-one maping between
		 * interfaces and links, so it would be natural to use the
		 * default interface as the default link.
		 */
		FUNC1(V_nd6_defifp);
	}

	return (error);
}