#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct thread {TYPE_1__* td_ucred; } ;
struct mount {int dummy; } ;
struct dqblk64 {int dummy; } ;
struct dquot {struct dqblk64 dq_dqb; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_uid; } ;

/* Variables and functions */
 int EINVAL ; 
#define  GRPQUOTA 129 
 struct dquot* NODQUOT ; 
 int /*<<< orphan*/  NULLVP ; 
 int /*<<< orphan*/  PRIV_VFS_GETQUOTA ; 
#define  USRQUOTA 128 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dquot**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dquot*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unprivileged_get_quota ; 

__attribute__((used)) static int
FUNC5(struct thread *td, struct mount *mp, u_long id, int type,
    struct dqblk64 *dqb)
{
	struct dquot *dq;
	int error;

	switch (type) {
	case USRQUOTA:
		if ((td->td_ucred->cr_uid != id) && !unprivileged_get_quota) {
			error = FUNC4(td, PRIV_VFS_GETQUOTA);
			if (error)
				return (error);
		}
		break;

	case GRPQUOTA:
		if (!FUNC3(id, td->td_ucred) &&
		    !unprivileged_get_quota) {
			error = FUNC4(td, PRIV_VFS_GETQUOTA);
			if (error)
				return (error);
		}
		break;

	default:
		return (EINVAL);
	}

	dq = NODQUOT;
	error = FUNC1(NULLVP, id, FUNC0(mp), type, &dq);
	if (error)
		return (error);
	*dqb = dq->dq_dqb;
	FUNC2(NULLVP, dq);
	return (error);
}