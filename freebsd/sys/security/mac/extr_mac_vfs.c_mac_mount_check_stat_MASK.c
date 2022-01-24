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
struct mount {int /*<<< orphan*/  mnt_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mount_check_stat ; 

int
FUNC2(struct ucred *cred, struct mount *mount)
{
	int error;

	FUNC1(mount_check_stat, cred, mount, mount->mnt_label);
	FUNC0(mount_check_stat, error, cred, mount);

	return (error);
}