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
struct ufsmount {int* um_qflags; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int EALREADY ; 
 int /*<<< orphan*/  PRIV_UFS_QUOTAOFF ; 
 int QTF_CLOSING ; 
 int QTF_OPENING ; 
 int /*<<< orphan*/  FUNC0 (struct ufsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufsmount*) ; 
 struct ufsmount* FUNC2 (struct mount*) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thread*,struct mount*,int) ; 

int
FUNC5(struct thread *td, struct mount *mp, int type)
{
	struct ufsmount *ump;
	int error;

	error = FUNC3(td, PRIV_UFS_QUOTAOFF);
	if (error)
		return (error);

	ump = FUNC2(mp);
	FUNC0(ump);
	if ((ump->um_qflags[type] & (QTF_OPENING|QTF_CLOSING)) != 0) {
		FUNC1(ump);
		return (EALREADY);
	}
	ump->um_qflags[type] |= QTF_CLOSING;
	FUNC1(ump);

	return (FUNC4(td, mp, type));
}