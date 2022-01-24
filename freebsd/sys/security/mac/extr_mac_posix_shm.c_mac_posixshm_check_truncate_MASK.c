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
struct shmfd {int /*<<< orphan*/  shm_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct ucred*,struct shmfd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct ucred*,struct shmfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  posixshm_check_truncate ; 

int
FUNC2(struct ucred *active_cred, struct ucred *file_cred,
    struct shmfd *shmfd)
{
	int error;

	FUNC1(posixshm_check_truncate, active_cred,
	    file_cred, shmfd, shmfd->shm_label);
	FUNC0(posixshm_check_truncate, error, active_cred,
	    file_cred, shmfd);

	return (error);
}