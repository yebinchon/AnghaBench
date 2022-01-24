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
 scalar_t__ brokenkvm ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(void *data)
{

	if (brokenkvm)
		FUNC0("WARNING: Running on a broken hypervisor that does "
		    "not support mandatory H_CLEAR_MOD and H_CLEAR_REF "
		    "hypercalls. Performance will be suboptimal.\n");
}