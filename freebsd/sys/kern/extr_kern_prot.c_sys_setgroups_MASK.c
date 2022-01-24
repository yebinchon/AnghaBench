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
typedef  int u_int ;
struct thread {int dummy; } ;
struct setgroups_args {int gidsetsize; int /*<<< orphan*/  gidset; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int XU_NGROUPS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ngroups_max ; 

int
FUNC4(struct thread *td, struct setgroups_args *uap)
{
	gid_t smallgroups[XU_NGROUPS];
	gid_t *groups;
	u_int gidsetsize;
	int error;

	gidsetsize = uap->gidsetsize;
	if (gidsetsize > ngroups_max + 1)
		return (EINVAL);

	if (gidsetsize > XU_NGROUPS)
		groups = FUNC3(gidsetsize * sizeof(gid_t), M_TEMP, M_WAITOK);
	else
		groups = smallgroups;

	error = FUNC0(uap->gidset, groups, gidsetsize * sizeof(gid_t));
	if (error == 0)
		error = FUNC2(td, gidsetsize, groups);

	if (gidsetsize > XU_NGROUPS)
		FUNC1(groups, M_TEMP);
	return (error);
}