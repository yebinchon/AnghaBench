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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ SHUTDOWN_PRI_FIRST ; 
 scalar_t__ SHUTDOWN_PRI_LAST ; 
 int /*<<< orphan*/  poweroff_wait ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  shutdown_halt ; 
 int /*<<< orphan*/  shutdown_panic ; 
 int /*<<< orphan*/  shutdown_reset ; 

__attribute__((used)) static void
FUNC1(void *unused)
{

	FUNC0(shutdown_final, poweroff_wait, NULL,
	    SHUTDOWN_PRI_FIRST);
	FUNC0(shutdown_final, shutdown_halt, NULL,
	    SHUTDOWN_PRI_LAST + 100);
	FUNC0(shutdown_final, shutdown_panic, NULL,
	    SHUTDOWN_PRI_LAST + 100);
	FUNC0(shutdown_final, shutdown_reset, NULL,
	    SHUTDOWN_PRI_LAST + 200);
}