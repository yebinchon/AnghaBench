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
struct shmfd {int /*<<< orphan*/  shm_mtx; int /*<<< orphan*/  shm_rl; int /*<<< orphan*/  shm_object; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  OFF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct shmfd*,int /*<<< orphan*/ ,void*) ; 

int
FUNC5(struct shmfd *shmfd, off_t length)
{
	void *rl_cookie;
	int error;

	rl_cookie = FUNC3(&shmfd->shm_rl, 0, OFF_MAX,
	    &shmfd->shm_mtx);
	FUNC0(shmfd->shm_object);
	error = FUNC4(shmfd, length, rl_cookie);
	FUNC1(shmfd->shm_object);
	FUNC2(&shmfd->shm_rl, rl_cookie, &shmfd->shm_mtx);
	return (error);
}