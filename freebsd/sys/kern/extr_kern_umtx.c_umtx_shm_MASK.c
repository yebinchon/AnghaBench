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
typedef  int u_int ;
struct umtx_shm_reg {int /*<<< orphan*/  ushm_obj; } ;
struct umtx_key {int shared; } ;
struct thread {int* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTYPE_SHM ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PROCESS_SHARE ; 
 int /*<<< orphan*/  TYPE_SHM ; 
 int UMTX_SHM_ALIVE ; 
 int UMTX_SHM_CREAT ; 
 int UMTX_SHM_DESTROY ; 
 int UMTX_SHM_LOOKUP ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct thread*,struct file**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shm_ops ; 
 int FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct umtx_key*) ; 
 int FUNC11 (struct thread*,void*) ; 
 int FUNC12 (struct thread*,struct umtx_key*,struct umtx_shm_reg**) ; 
 struct umtx_shm_reg* FUNC13 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC14 (struct umtx_shm_reg*,int) ; 

__attribute__((used)) static int
FUNC15(struct thread *td, void *addr, u_int flags)
{
	struct umtx_key key;
	struct umtx_shm_reg *reg;
	struct file *fp;
	int error, fd;

	if (FUNC2(flags & (UMTX_SHM_CREAT | UMTX_SHM_LOOKUP |
	    UMTX_SHM_DESTROY| UMTX_SHM_ALIVE)) != 1)
		return (EINVAL);
	if ((flags & UMTX_SHM_ALIVE) != 0)
		return (FUNC11(td, addr));
	error = FUNC9(addr, TYPE_SHM, PROCESS_SHARE, &key);
	if (error != 0)
		return (error);
	FUNC1(key.shared == 1, ("non-shared key"));
	if ((flags & UMTX_SHM_CREAT) != 0) {
		error = FUNC12(td, &key, &reg);
	} else {
		reg = FUNC13(&key);
		if (reg == NULL)
			error = ESRCH;
	}
	FUNC10(&key);
	if (error != 0)
		return (error);
	FUNC1(reg != NULL, ("no reg"));
	if ((flags & UMTX_SHM_DESTROY) != 0) {
		FUNC14(reg, true);
	} else {
#if 0
#ifdef MAC
		error = mac_posixshm_check_open(td->td_ucred,
		    reg->ushm_obj, FFLAGS(O_RDWR));
		if (error == 0)
#endif
			error = shm_access(reg->ushm_obj, td->td_ucred,
			    FFLAGS(O_RDWR));
		if (error == 0)
#endif
			error = FUNC3(td, &fp, &fd, O_CLOEXEC, NULL);
		if (error == 0) {
			FUNC8(reg->ushm_obj);
			FUNC5(fp, FUNC0(O_RDWR), DTYPE_SHM, reg->ushm_obj,
			    &shm_ops);
			td->td_retval[0] = fd;
			FUNC4(fp, td);
		}
	}
	FUNC14(reg, false);
	return (error);
}