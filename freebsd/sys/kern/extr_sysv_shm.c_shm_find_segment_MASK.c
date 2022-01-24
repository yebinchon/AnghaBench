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
struct TYPE_3__ {int mode; scalar_t__ seq; } ;
struct TYPE_4__ {TYPE_1__ shm_perm; } ;
struct shmid_kernel {TYPE_2__ u; } ;
struct prison {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int SHMSEG_ALLOCATED ; 
 int SHMSEG_REMOVED ; 
 int /*<<< orphan*/  shm_allow_removed ; 
 scalar_t__ FUNC2 (struct prison*,struct shmid_kernel*) ; 
 int shmalloced ; 
 struct shmid_kernel* shmsegs ; 

__attribute__((used)) static struct shmid_kernel *
FUNC3(struct prison *rpr, int arg, bool is_shmid)
{
	struct shmid_kernel *shmseg;
	int segnum;

	segnum = is_shmid ? FUNC0(arg) : arg;
	if (segnum < 0 || segnum >= shmalloced)
		return (NULL);
	shmseg = &shmsegs[segnum];
	if ((shmseg->u.shm_perm.mode & SHMSEG_ALLOCATED) == 0 ||
	    (!shm_allow_removed &&
	    (shmseg->u.shm_perm.mode & SHMSEG_REMOVED) != 0) ||
	    (is_shmid && shmseg->u.shm_perm.seq != FUNC1(arg)) ||
	    FUNC2(rpr, shmseg) != 0)
		return (NULL);
	return (shmseg);
}