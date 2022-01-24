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
typedef  scalar_t__ uid_t ;
struct ucred {scalar_t__ cr_uid; } ;
struct thread {int dummy; } ;
struct mqfs_node {scalar_t__ mn_uid; scalar_t__ mn_gid; } ;
struct file {struct mqfs_node* f_data; } ;
typedef  scalar_t__ gid_t ;
struct TYPE_2__ {int /*<<< orphan*/  mi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_VFS_CHOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ucred*) ; 
 TYPE_1__ mqfs_data ; 
 int FUNC1 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct file *fp, uid_t uid, gid_t gid, struct ucred *active_cred,
    struct thread *td)
{
	struct mqfs_node *pn;
	int error;

	error = 0;
	pn = fp->f_data;
	FUNC2(&mqfs_data.mi_lock);
	if (uid == (uid_t)-1)
		uid = pn->mn_uid;
	if (gid == (gid_t)-1)
		gid = pn->mn_gid;
	if (((uid != pn->mn_uid && uid != active_cred->cr_uid) ||
	    (gid != pn->mn_gid && !FUNC0(gid, active_cred))) &&
	    (error = FUNC1(active_cred, PRIV_VFS_CHOWN)))
		goto out;
	pn->mn_uid = uid;
	pn->mn_gid = gid;
out:
	FUNC3(&mqfs_data.mi_lock);
	return (error);
}