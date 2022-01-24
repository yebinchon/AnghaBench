#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {TYPE_1__ shm_perm; int /*<<< orphan*/  shm_segsz; } ;
struct shmid_kernel {int /*<<< orphan*/ * cred; TYPE_2__ u; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  RACCT_NSHM ; 
 int /*<<< orphan*/  RACCT_SHMSIZE ; 
 int /*<<< orphan*/  SHMSEG_FREE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct shmid_kernel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shm_committed ; 
 int /*<<< orphan*/  shm_nused ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct shmid_kernel *shmseg)
{
	vm_size_t size;

	FUNC0();

	FUNC6(shmseg->object);
	shmseg->object = NULL;
	size = FUNC5(shmseg->u.shm_segsz);
	shm_committed -= FUNC1(size);
	shm_nused--;
	shmseg->u.shm_perm.mode = SHMSEG_FREE;
#ifdef MAC
	mac_sysvshm_cleanup(shmseg);
#endif
	FUNC4(shmseg->cred, RACCT_NSHM, 1);
	FUNC4(shmseg->cred, RACCT_SHMSIZE, size);
	FUNC2(shmseg->cred);
	shmseg->cred = NULL;
}