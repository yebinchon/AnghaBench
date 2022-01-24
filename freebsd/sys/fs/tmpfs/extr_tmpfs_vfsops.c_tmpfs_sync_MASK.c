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
struct mount {int mnt_kern_flag; } ;

/* Variables and functions */
 int MNTK_SUSPEND2 ; 
 int MNTK_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_LAZY ; 
 int MNT_SUSPEND ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,int) ; 

__attribute__((used)) static int
FUNC3(struct mount *mp, int waitfor)
{

	if (waitfor == MNT_SUSPEND) {
		FUNC0(mp);
		mp->mnt_kern_flag |= MNTK_SUSPEND2 | MNTK_SUSPENDED;
		FUNC1(mp);
	} else if (waitfor == MNT_LAZY) {
		FUNC2(mp, true);
	}
	return (0);
}