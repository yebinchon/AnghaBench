#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ seq; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {TYPE_1__ shm_perm; } ;
struct shmid_kernel {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  newsegs ;
struct TYPE_6__ {int shmmni; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SHM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SHMSEG_FREE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct shmid_kernel*,struct shmid_kernel*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct shmid_kernel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shmid_kernel*) ; 
 struct shmid_kernel* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int shmalloced ; 
 TYPE_3__ shminfo ; 
 struct shmid_kernel* shmsegs ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct shmid_kernel *newsegs;
	int i;

	FUNC0();

	if (shmalloced >= shminfo.shmmni)
		return;

	newsegs = FUNC4(shminfo.shmmni * sizeof(*newsegs), M_SHM,
	    M_WAITOK | M_ZERO);
	for (i = 0; i < shmalloced; i++)
		FUNC1(&shmsegs[i], &newsegs[i], sizeof(newsegs[0]));
	for (; i < shminfo.shmmni; i++) {
		newsegs[i].u.shm_perm.mode = SHMSEG_FREE;
		newsegs[i].u.shm_perm.seq = 0;
#ifdef MAC
		mac_sysvshm_init(&newsegs[i]);
#endif
	}
	FUNC2(shmsegs, M_SHM);
	shmsegs = newsegs;
	shmalloced = shminfo.shmmni;
}