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
typedef  scalar_t__ vm_size_t ;
struct vmspace {int /*<<< orphan*/  vm_map; } ;
struct shmmap_state {int shmid; scalar_t__ va; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {scalar_t__ shm_nattch; TYPE_1__ shm_perm; int /*<<< orphan*/  shm_dtime; int /*<<< orphan*/  shm_segsz; } ;
struct shmid_kernel {TYPE_2__ u; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KERN_SUCCESS ; 
 int SHMSEG_REMOVED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct shmid_kernel*) ; 
 int shm_last_free ; 
 int shmalloced ; 
 struct shmid_kernel* shmsegs ; 
 int /*<<< orphan*/  time_second ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct vmspace *vm, struct shmmap_state *shmmap_s)
{
	struct shmid_kernel *shmseg;
	int segnum, result;
	vm_size_t size;

	FUNC2();
	segnum = FUNC0(shmmap_s->shmid);
	FUNC1(segnum >= 0 && segnum < shmalloced,
	    ("segnum %d shmalloced %d", segnum, shmalloced));

	shmseg = &shmsegs[segnum];
	size = FUNC3(shmseg->u.shm_segsz);
	result = FUNC5(&vm->vm_map, shmmap_s->va, shmmap_s->va + size);
	if (result != KERN_SUCCESS)
		return (EINVAL);
	shmmap_s->shmid = -1;
	shmseg->u.shm_dtime = time_second;
	if (--shmseg->u.shm_nattch == 0 &&
	    (shmseg->u.shm_perm.mode & SHMSEG_REMOVED)) {
		FUNC4(shmseg);
		shm_last_free = segnum;
	}
	return (0);
}