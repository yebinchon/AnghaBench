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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  agp_devclass ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

device_t
FUNC3()
{
	device_t *children, child;
	int i, count;

	if (!agp_devclass)
		return NULL;
	if (FUNC0(agp_devclass, &children, &count) != 0)
		return NULL;
	child = NULL;
	for (i = 0; i < count; i++) {
		if (FUNC1(children[i])) {
			child = children[i];
			break;
		}
	}
	FUNC2(children, M_TEMP);
	return child;
}