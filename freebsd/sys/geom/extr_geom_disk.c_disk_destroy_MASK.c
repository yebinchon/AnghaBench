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
struct disk {int d_destroyed; int /*<<< orphan*/ * d_devstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct disk*) ; 
 int /*<<< orphan*/  g_disk_destroy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct disk *dp)
{

	FUNC1(dp);
	dp->d_destroyed = 1;
	if (dp->d_devstat != NULL)
		FUNC0(dp->d_devstat);
	FUNC2(g_disk_destroy, dp, M_WAITOK, NULL);
}