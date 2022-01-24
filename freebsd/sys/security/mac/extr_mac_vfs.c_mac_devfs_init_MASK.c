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
struct devfs_dirent {int /*<<< orphan*/ * de_label; } ;

/* Variables and functions */
 int MPC_OBJECT_DEVFS ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int mac_labeled ; 

void
FUNC1(struct devfs_dirent *de)
{

	if (mac_labeled & MPC_OBJECT_DEVFS)
		de->de_label = FUNC0();
	else
		de->de_label = NULL;
}