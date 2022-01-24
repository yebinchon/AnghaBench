#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int semmni; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  process_exit ; 
 int /*<<< orphan*/ * sem ; 
 int /*<<< orphan*/  sem32_syscalls ; 
 int /*<<< orphan*/  sem_mtx ; 
 scalar_t__ sem_prison_slot ; 
 int /*<<< orphan*/  sem_syscalls ; 
 int /*<<< orphan*/  sem_undo_mtx ; 
 int /*<<< orphan*/ * sema ; 
 int /*<<< orphan*/ * sema_mtx ; 
 int /*<<< orphan*/  semexit_tag ; 
 TYPE_1__ seminfo ; 
 scalar_t__ semtot ; 
 int /*<<< orphan*/ * semu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void)
{
	int i;

	/* XXXKIB */
	if (semtot != 0)
		return (EBUSY);

#ifdef COMPAT_FREEBSD32
	syscall32_helper_unregister(sem32_syscalls);
#endif
	FUNC6(sem_syscalls);
	FUNC0(process_exit, semexit_tag);
	if (sem_prison_slot != 0)
		FUNC4(sem_prison_slot);
#ifdef MAC
	for (i = 0; i < seminfo.semmni; i++)
		mac_sysvsem_destroy(&sema[i]);
#endif
	FUNC1(sem, M_SEM);
	FUNC1(sema, M_SEM);
	FUNC1(semu, M_SEM);
	for (i = 0; i < seminfo.semmni; i++)
		FUNC3(&sema_mtx[i]);
	FUNC1(sema_mtx, M_SEM);
	FUNC3(&sem_mtx);
	FUNC3(&sem_undo_mtx);
	return (0);
}