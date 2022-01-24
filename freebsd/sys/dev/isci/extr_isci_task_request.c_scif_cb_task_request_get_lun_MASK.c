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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */

uint32_t
FUNC0(void * scif_user_task_request)
{

	/* Currently we are only doing hard resets, not LUN resets.  So
	 *  always returning 0 is OK here, since LUN doesn't matter for
	 *  a hard device reset.
	 */
	return (0);
}