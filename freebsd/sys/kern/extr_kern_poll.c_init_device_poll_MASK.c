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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_LAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  poll_mtx ; 
 int /*<<< orphan*/  poll_shutdown ; 
 int /*<<< orphan*/  shutdown_post_sync ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(&poll_mtx, "polling", NULL, MTX_DEF);
	FUNC0(shutdown_post_sync, poll_shutdown, NULL,
	    SHUTDOWN_PRI_LAST);
}