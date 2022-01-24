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
typedef  scalar_t__ vm_offset_t ;
struct thread {int /*<<< orphan*/  td_ucred; struct proc* td_proc; } ;
struct shmmap_state {int shmid; scalar_t__ va; } ;
struct proc {TYPE_2__* p_vmspace; } ;
struct TYPE_4__ {struct shmmap_state* vm_shm; } ;
struct TYPE_3__ {int shmseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOSYS ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,struct shmmap_state*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ shminfo ; 
 int /*<<< orphan*/ * shmsegs ; 

__attribute__((used)) static int
FUNC6(struct thread *td, const void *shmaddr)
{
	struct proc *p = td->td_proc;
	struct shmmap_state *shmmap_s;
#ifdef MAC
	int error;
#endif
	int i;

	FUNC2();
	if (FUNC5(td->td_ucred) == NULL)
		return (ENOSYS);
	shmmap_s = p->p_vmspace->vm_shm;
 	if (shmmap_s == NULL)
		return (EINVAL);
	FUNC0(shmmap_s->shmid);
	for (i = 0; i < shminfo.shmseg; i++, shmmap_s++) {
		if (shmmap_s->shmid != -1 &&
		    shmmap_s->va == (vm_offset_t)shmaddr) {
			break;
		}
	}
	if (i == shminfo.shmseg)
		return (EINVAL);
#ifdef MAC
	error = mac_sysvshm_check_shmdt(td->td_ucred,
	    &shmsegs[IPCID_TO_IX(shmmap_s->shmid)]);
	if (error != 0)
		return (error);
#endif
	return (FUNC4(p->p_vmspace, shmmap_s));
}