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
struct mount {scalar_t__ mnt_secondary_writes; int mnt_kern_flag; } ;

/* Variables and functions */
 int MNTK_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

void
FUNC6(struct mount *mp)
{
	if (mp == NULL || !FUNC4(mp))
		return;
	FUNC0(mp);
	FUNC2(mp);
	mp->mnt_secondary_writes--;
	if (mp->mnt_secondary_writes < 0)
		FUNC3("vn_finished_secondary_write: neg cnt");
	if ((mp->mnt_kern_flag & MNTK_SUSPEND) != 0 &&
	    mp->mnt_secondary_writes <= 0)
		FUNC5(&mp->mnt_secondary_writes);
	FUNC1(mp);
}