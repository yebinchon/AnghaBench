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
struct shmfd {int /*<<< orphan*/  shm_object; int /*<<< orphan*/  shm_mtx; int /*<<< orphan*/  shm_rl; int /*<<< orphan*/  shm_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SHMFD ; 
 int /*<<< orphan*/  FUNC0 (struct shmfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct shmfd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct shmfd *shmfd)
{

	if (FUNC4(&shmfd->shm_refs)) {
#ifdef MAC
		mac_posixshm_destroy(shmfd);
#endif
		FUNC3(&shmfd->shm_rl);
		FUNC2(&shmfd->shm_mtx);
		FUNC5(shmfd->shm_object);
		FUNC0(shmfd, M_SHMFD);
	}
}