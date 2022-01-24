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
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct shmfd {int shm_seals; int /*<<< orphan*/  shm_mtx; int /*<<< orphan*/  shm_rl; int /*<<< orphan*/  shm_size; int /*<<< orphan*/  shm_object; } ;
struct file {int /*<<< orphan*/  f_cred; struct shmfd* f_data; } ;

/* Variables and functions */
 int EPERM ; 
 int FOF_OFFSET ; 
 int F_SEAL_WRITE ; 
 scalar_t__ OFF_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct file*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct uio*,int) ; 
 int FUNC2 (struct ucred*,int /*<<< orphan*/ ,struct shmfd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC6(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
	struct shmfd *shmfd;
	void *rl_cookie;
	int error;

	shmfd = fp->f_data;
#ifdef MAC
	error = mac_posixshm_check_write(active_cred, fp->f_cred, shmfd);
	if (error)
		return (error);
#endif
	FUNC0(fp, uio, flags);
	if ((flags & FOF_OFFSET) == 0) {
		rl_cookie = FUNC4(&shmfd->shm_rl, 0, OFF_MAX,
		    &shmfd->shm_mtx);
	} else {
		rl_cookie = FUNC4(&shmfd->shm_rl, uio->uio_offset,
		    uio->uio_offset + uio->uio_resid, &shmfd->shm_mtx);
	}
	if ((shmfd->shm_seals & F_SEAL_WRITE) != 0)
		error = EPERM;
	else
		error = FUNC5(shmfd->shm_object, shmfd->shm_size, uio);
	FUNC3(&shmfd->shm_rl, rl_cookie, &shmfd->shm_mtx);
	FUNC1(fp, uio, flags);
	return (error);
}