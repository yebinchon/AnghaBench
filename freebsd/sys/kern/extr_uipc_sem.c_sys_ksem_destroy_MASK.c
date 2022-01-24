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
struct thread {int dummy; } ;
struct ksem_destroy_args {int /*<<< orphan*/  id; } ;
struct ksem {int ks_flags; scalar_t__ ks_waiters; } ;
struct file {struct ksem* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int KS_ANONYMOUS ; 
 int KS_DEAD ; 
 int /*<<< orphan*/  cap_no_rights ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sem_lock ; 

int
FUNC6(struct thread *td, struct ksem_destroy_args *uap)
{
	struct file *fp;
	struct ksem *ks;
	int error;

	/* No capability rights required to close a semaphore. */
	FUNC0(uap->id);
	error = FUNC3(td, uap->id, &cap_no_rights, &fp);
	if (error)
		return (error);
	ks = fp->f_data;
	if (!(ks->ks_flags & KS_ANONYMOUS)) {
		FUNC1(fp, td);
		return (EINVAL);
	}
	FUNC4(&sem_lock);
	if (ks->ks_waiters != 0) {
		FUNC5(&sem_lock);
		error = EBUSY;
		goto err;
	}
	ks->ks_flags |= KS_DEAD;
	FUNC5(&sem_lock);

	error = FUNC2(td, uap->id);
err:
	FUNC1(fp, td);
	return (error);
}