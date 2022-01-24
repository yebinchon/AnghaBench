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
typedef  int /*<<< orphan*/  val ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct ksem_getvalue_args {int /*<<< orphan*/  val; int /*<<< orphan*/  id; } ;
struct ksem {int ks_value; int /*<<< orphan*/  ks_atime; } ;
struct file {int /*<<< orphan*/  f_cred; struct ksem* f_data; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_SEM_GETVALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ksem*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sem_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct thread *td, struct ksem_getvalue_args *uap)
{
	cap_rights_t rights;
	struct file *fp;
	struct ksem *ks;
	int error, val;

	FUNC0(uap->id);
	error = FUNC4(td, uap->id,
	    FUNC1(&rights, CAP_SEM_GETVALUE), &fp);
	if (error)
		return (error);
	ks = fp->f_data;

	FUNC6(&sem_lock);
#ifdef MAC
	error = mac_posixsem_check_getvalue(td->td_ucred, fp->f_cred, ks);
	if (error) {
		mtx_unlock(&sem_lock);
		fdrop(fp, td);
		return (error);
	}
#endif
	val = ks->ks_value;
	FUNC8(&ks->ks_atime);
	FUNC7(&sem_lock);
	FUNC3(fp, td);
	error = FUNC2(&val, uap->val, sizeof(val));
	return (error);
}