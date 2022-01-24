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
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct g_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_FIRST ; 
 int /*<<< orphan*/ * g_raid_post_sync ; 
 int /*<<< orphan*/  g_raid_shutdown_post_sync ; 
 int g_raid_started ; 
 int /*<<< orphan*/  shutdown_post_sync ; 

__attribute__((used)) static void
FUNC2(struct g_class *mp)
{

	g_raid_post_sync = FUNC0(shutdown_post_sync,
	    g_raid_shutdown_post_sync, mp, SHUTDOWN_PRI_FIRST);
	if (g_raid_post_sync == NULL)
		FUNC1(0, "Warning! Cannot register shutdown event.");
	g_raid_started = 1;
}