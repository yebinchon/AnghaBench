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
struct ufsmount {scalar_t__* um_quotas; int /*<<< orphan*/ * um_qflags; } ;
struct thread {int dummy; } ;
struct mount {int /*<<< orphan*/  mnt_flag; } ;

/* Variables and functions */
 int MAXQUOTAS ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  MNT_QUOTA ; 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  QTF_CLOSING ; 
 int /*<<< orphan*/  FUNC2 (struct ufsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufsmount*) ; 
 struct ufsmount* FUNC4 (struct mount*) ; 
 int FUNC5 (struct thread*,struct mount*,int) ; 

int
FUNC6(struct thread *td, struct mount *mp, int type)
{
	struct ufsmount *ump;
	int error, i;

	error = FUNC5(td, mp, type);

	ump = FUNC4(mp);
	FUNC2(ump);
	ump->um_qflags[type] &= ~QTF_CLOSING;
	for (i = 0; i < MAXQUOTAS; i++)
		if (ump->um_quotas[i] != NULLVP)
			break;
	if (i == MAXQUOTAS) {
		FUNC0(mp);
		mp->mnt_flag &= ~MNT_QUOTA;
		FUNC1(mp);
	}
	FUNC3(ump);
	return (error);
}