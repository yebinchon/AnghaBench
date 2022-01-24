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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** ocs_devices ; 

ocs_t *FUNC1(uint32_t index)
{
	if (index < FUNC0(ocs_devices)) {
		return ocs_devices[index];
	}
	return NULL;
}