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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_global_lock ; 
 int /*<<< orphan*/  nlm_next_sysid ; 

uint32_t
FUNC2(void)
{
	uint32_t next_sysid;

	FUNC0(&nlm_global_lock);
	next_sysid = nlm_next_sysid++;
	FUNC1(&nlm_global_lock);
	return (next_sysid);
}