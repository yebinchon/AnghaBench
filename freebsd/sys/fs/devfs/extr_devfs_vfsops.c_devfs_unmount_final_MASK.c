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
struct devfs_mount {int /*<<< orphan*/  dm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVFS ; 
 int /*<<< orphan*/  FUNC0 (struct devfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct devfs_mount *fmp)
{
	FUNC1(&fmp->dm_lock);
	FUNC0(fmp, M_DEVFS);
}