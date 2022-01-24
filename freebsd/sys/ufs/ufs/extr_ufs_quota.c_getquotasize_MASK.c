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
typedef  int /*<<< orphan*/  u_long ;
struct ufsmount {scalar_t__* um_quotas; int* um_qflags; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NULLVP ; 
 int QTF_64BIT ; 
 int QTF_CLOSING ; 
 int /*<<< orphan*/  FUNC0 (struct ufsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufsmount*) ; 
 struct ufsmount* FUNC2 (struct mount*) ; 
 int FUNC3 (int*,void*,int) ; 

int
FUNC4(struct thread *td, struct mount *mp, u_long id, int type,
    void *sizep)
{
	struct ufsmount *ump = FUNC2(mp);
	int bitsize;

	FUNC0(ump);
	if (ump->um_quotas[type] == NULLVP ||
	    (ump->um_qflags[type] & QTF_CLOSING)) {
		FUNC1(ump);
		return (EINVAL);
	}
	if ((ump->um_qflags[type] & QTF_64BIT) != 0)
		bitsize = 64;
	else
		bitsize = 32;
	FUNC1(ump);
	return (FUNC3(&bitsize, sizep, sizeof(int)));
}