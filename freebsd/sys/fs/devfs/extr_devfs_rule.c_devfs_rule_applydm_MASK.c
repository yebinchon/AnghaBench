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
struct devfs_mount {int /*<<< orphan*/  dm_rootdir; } ;
struct devfs_krule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devfs_krule*,struct devfs_mount*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct devfs_krule *dk, struct devfs_mount *dm)
{

	FUNC0(dk, dm, dm->dm_rootdir);
}