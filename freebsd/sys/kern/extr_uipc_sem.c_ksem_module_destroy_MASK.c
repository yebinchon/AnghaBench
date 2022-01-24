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
 int /*<<< orphan*/  M_KSEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksem32_syscalls ; 
 int /*<<< orphan*/  ksem_count_lock ; 
 int /*<<< orphan*/  ksem_dict_lock ; 
 int /*<<< orphan*/  ksem_dictionary ; 
 int /*<<< orphan*/  ksem_hash ; 
 int /*<<< orphan*/  ksem_syscalls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sem_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{

#ifdef COMPAT_FREEBSD32
	syscall32_helper_unregister(ksem32_syscalls);
#endif
	FUNC6(ksem_syscalls);

	FUNC2(CTL_P1003_1B_SEMAPHORES, 0);
	FUNC0(ksem_dictionary, M_KSEM, ksem_hash);
	FUNC4(&ksem_dict_lock);
	FUNC1(&ksem_count_lock);
	FUNC1(&sem_lock);
	FUNC3(CTL_P1003_1B_SEM_VALUE_MAX);
	FUNC3(CTL_P1003_1B_SEM_NSEMS_MAX);
}