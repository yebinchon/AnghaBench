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
struct umutex {int m_flags; int m_owner; } ;
struct thread {scalar_t__ td_proc; int td_tid; } ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int UMUTEX_CONTESTED ; 
 int UMUTEX_ROBUST ; 
 int FUNC1 (void*,struct umutex*,int) ; 
 scalar_t__ curproc ; 
 int FUNC2 (struct thread*,struct umutex*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,struct umutex*,uintptr_t*) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, uintptr_t rbp, uintptr_t *rb_list, bool inact)
{
	struct umutex m;
	int error;

	FUNC0(td->td_proc == curproc, ("need current vmspace"));
	error = FUNC1((void *)rbp, &m, sizeof(m));
	if (error != 0)
		return (error);
	if (rb_list != NULL)
		FUNC3(td, &m, rb_list);
	if ((m.m_flags & UMUTEX_ROBUST) == 0)
		return (EINVAL);
	if ((m.m_owner & ~UMUTEX_CONTESTED) != td->td_tid)
		/* inact is cleared after unlock, allow the inconsistency */
		return (inact ? 0 : EINVAL);
	return (FUNC2(td, (struct umutex *)rbp, true));
}