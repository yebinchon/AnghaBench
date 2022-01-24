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

/* Variables and functions */
 int /*<<< orphan*/  CTL_P1003_1B_SEMAPHORES ; 
 int /*<<< orphan*/  CTL_P1003_1B_SEM_NSEMS_MAX ; 
 int /*<<< orphan*/  CTL_P1003_1B_SEM_VALUE_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_KSEM ; 
 long SEM_MAX ; 
 long SEM_VALUE_MAX ; 
 int /*<<< orphan*/  SY_THR_STATIC_KLD ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ksem32_syscalls ; 
 int /*<<< orphan*/  ksem_count_lock ; 
 int /*<<< orphan*/  ksem_dict_lock ; 
 int /*<<< orphan*/  ksem_dictionary ; 
 int /*<<< orphan*/  ksem_hash ; 
 int /*<<< orphan*/  ksem_syscalls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  sem_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void)
{
	int error;

	FUNC1(&sem_lock, "sem", NULL, MTX_DEF);
	FUNC1(&ksem_count_lock, "ksem count", NULL, MTX_DEF);
	FUNC3(&ksem_dict_lock, "ksem dictionary");
	ksem_dictionary = FUNC0(1024, M_KSEM, &ksem_hash);
	FUNC2(CTL_P1003_1B_SEMAPHORES, 200112L);
	FUNC2(CTL_P1003_1B_SEM_NSEMS_MAX, SEM_MAX);
	FUNC2(CTL_P1003_1B_SEM_VALUE_MAX, SEM_VALUE_MAX);

	error = FUNC5(ksem_syscalls, SY_THR_STATIC_KLD);
	if (error)
		return (error);
#ifdef COMPAT_FREEBSD32
	error = syscall32_helper_register(ksem32_syscalls, SY_THR_STATIC_KLD);
	if (error)
		return (error);
#endif
	return (0);
}