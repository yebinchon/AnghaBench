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
typedef  int phandle_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(phandle_t root, phandle_t node)
{
	phandle_t child;

	if (root == node)
		return (0);
	for (child = FUNC0(root); child != 0 && child != -1;
	    child = FUNC1(child))
		if (FUNC2(child, node) == 0)
			return (0);
	return (EINVAL);
}