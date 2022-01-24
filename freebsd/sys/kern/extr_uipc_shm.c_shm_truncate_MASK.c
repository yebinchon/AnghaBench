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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct shmfd {int dummy; } ;
struct file {int /*<<< orphan*/  f_cred; struct shmfd* f_data; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (struct ucred*,int /*<<< orphan*/ ,struct shmfd*) ; 
 int FUNC1 (struct shmfd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct file *fp, off_t length, struct ucred *active_cred,
    struct thread *td)
{
	struct shmfd *shmfd;
#ifdef MAC
	int error;
#endif

	shmfd = fp->f_data;
#ifdef MAC
	error = mac_posixshm_check_truncate(active_cred, fp->f_cred, shmfd);
	if (error)
		return (error);
#endif
	return (FUNC1(shmfd, length));
}