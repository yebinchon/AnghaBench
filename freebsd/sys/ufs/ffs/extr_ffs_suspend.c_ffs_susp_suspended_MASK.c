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
struct ufsmount {int um_flags; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_LOCKED ; 
 int UM_WRITESUSPENDED ; 
 struct ufsmount* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  ffs_susp_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mount *mp)
{
	struct ufsmount *ump;

	FUNC1(&ffs_susp_lock, SA_LOCKED);

	ump = FUNC0(mp);
	if ((ump->um_flags & UM_WRITESUSPENDED) != 0)
		return (1);
	return (0);
}