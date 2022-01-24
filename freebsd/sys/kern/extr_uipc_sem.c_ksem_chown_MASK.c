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
typedef  scalar_t__ uid_t ;
struct ucred {scalar_t__ cr_uid; } ;
struct thread {int dummy; } ;
struct ksem {scalar_t__ ks_uid; scalar_t__ ks_gid; } ;
struct file {struct ksem* f_data; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_VFS_CHOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ucred*) ; 
 int FUNC1 (struct ucred*,struct ksem*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sem_lock ; 

__attribute__((used)) static int
FUNC5(struct file *fp, uid_t uid, gid_t gid, struct ucred *active_cred,
    struct thread *td)
{
	struct ksem *ks;
	int error;

	error = 0;
	ks = fp->f_data;
	FUNC2(&sem_lock);
#ifdef MAC
	error = mac_posixsem_check_setowner(active_cred, ks, uid, gid);
	if (error != 0)
		goto out;
#endif
	if (uid == (uid_t)-1)
		uid = ks->ks_uid;
	if (gid == (gid_t)-1)
                 gid = ks->ks_gid;
	if (((uid != ks->ks_uid && uid != active_cred->cr_uid) ||
	    (gid != ks->ks_gid && !FUNC0(gid, active_cred))) &&
	    (error = FUNC4(active_cred, PRIV_VFS_CHOWN)))
		goto out;
	ks->ks_uid = uid;
	ks->ks_gid = gid;
out:
	FUNC3(&sem_lock);
	return (error);
}