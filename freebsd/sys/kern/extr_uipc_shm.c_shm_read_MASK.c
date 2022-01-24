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
struct shmfd {int /*<<< orphan*/  shm_mtx; int /*<<< orphan*/  shm_rl; int /*<<< orphan*/  shm_size; int /*<<< orphan*/  shm_object; } ;
struct file {int /*<<< orphan*/  f_cred; struct shmfd* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct uio*,int) ; 
 int FUNC2 (struct ucred*,int /*<<< orphan*/ ,struct shmfd*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
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
	error = mac_posixshm_check_read(active_cred, fp->f_cred, shmfd);
	if (error)
		return (error);
#endif
	FUNC0(fp, uio, flags);
	rl_cookie = FUNC3(&shmfd->shm_rl, uio->uio_offset,
	    uio->uio_offset + uio->uio_resid, &shmfd->shm_mtx);
	error = FUNC5(shmfd->shm_object, shmfd->shm_size, uio);
	FUNC4(&shmfd->shm_rl, rl_cookie, &shmfd->shm_mtx);
	FUNC1(fp, uio, flags);
	return (error);
}