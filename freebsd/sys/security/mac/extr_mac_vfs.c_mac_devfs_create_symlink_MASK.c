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
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct devfs_dirent {int /*<<< orphan*/  de_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ucred*,struct mount*,struct devfs_dirent*,int /*<<< orphan*/ ,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devfs_create_symlink ; 

void
FUNC1(struct ucred *cred, struct mount *mp,
    struct devfs_dirent *dd, struct devfs_dirent *de)
{

	FUNC0(devfs_create_symlink, cred, mp, dd,
	    dd->de_label, de, de->de_label);
}