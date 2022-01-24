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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct ksem_post_args {int /*<<< orphan*/  id; } ;
struct ksem {scalar_t__ ks_value; scalar_t__ ks_waiters; int /*<<< orphan*/  ks_ctime; int /*<<< orphan*/  ks_cv; } ;
struct file {int /*<<< orphan*/  f_cred; struct ksem* f_data; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_SEM_POST ; 
 int EOVERFLOW ; 
 scalar_t__ SEM_VALUE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ksem*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sem_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct thread *td, struct ksem_post_args *uap)
{
	cap_rights_t rights;
	struct file *fp;
	struct ksem *ks;
	int error;

	FUNC0(uap->id);
	error = FUNC4(td, uap->id,
	    FUNC1(&rights, CAP_SEM_POST), &fp);
	if (error)
		return (error);
	ks = fp->f_data;

	FUNC6(&sem_lock);
#ifdef MAC
	error = mac_posixsem_check_post(td->td_ucred, fp->f_cred, ks);
	if (error)
		goto err;
#endif
	if (ks->ks_value == SEM_VALUE_MAX) {
		error = EOVERFLOW;
		goto err;
	}
	++ks->ks_value;
	if (ks->ks_waiters > 0)
		FUNC2(&ks->ks_cv);
	error = 0;
	FUNC8(&ks->ks_ctime);
err:
	FUNC7(&sem_lock);
	FUNC3(fp, td);
	return (error);
}