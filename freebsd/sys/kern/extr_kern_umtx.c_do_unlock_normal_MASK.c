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
typedef  int uint32_t ;
struct umutex {int /*<<< orphan*/  m_owner; } ;
struct umtx_key {int dummy; } ;
struct thread {int td_tid; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TYPE_NORMAL_UMUTEX ; 
 int UMUTEX_CONTESTED ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (struct umutex*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct umtx_key*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct umtx_key*) ; 
 int FUNC8 (struct thread*,int) ; 
 int FUNC9 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC11 (struct umtx_key*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC13 (struct umtx_key*) ; 

__attribute__((used)) static int
FUNC14(struct thread *td, struct umutex *m, uint32_t flags, bool rb)
{
	struct umtx_key key;
	uint32_t owner, old, id, newlock;
	int error, count;

	id = td->td_tid;

again:
	/*
	 * Make sure we own this mtx.
	 */
	error = FUNC3(&m->m_owner, &owner);
	if (error == -1)
		return (EFAULT);

	if ((owner & ~UMUTEX_CONTESTED) != id)
		return (EPERM);

	newlock = FUNC6(flags, rb);
	if ((owner & UMUTEX_CONTESTED) == 0) {
		error = FUNC2(&m->m_owner, owner, &old, newlock);
		if (error == -1)
			return (EFAULT);
		if (error == 1) {
			error = FUNC8(td, false);
			if (error != 0)
				return (error);
			goto again;
		}
		FUNC1(old == owner);
		return (0);
	}

	/* We should only ever be in here for contested locks */
	if ((error = FUNC4(m, TYPE_NORMAL_UMUTEX, FUNC0(flags),
	    &key)) != 0)
		return (error);

	FUNC10(&key);
	FUNC7(&key);
	count = FUNC9(&key);
	FUNC13(&key);

	/*
	 * When unlocking the umtx, it must be marked as unowned if
	 * there is zero or one thread only waiting for it.
	 * Otherwise, it must be marked as contested.
	 */
	if (count > 1)
		newlock |= UMUTEX_CONTESTED;
	error = FUNC2(&m->m_owner, owner, &old, newlock);
	FUNC10(&key);
	FUNC11(&key, 1);
	FUNC12(&key);
	FUNC13(&key);
	FUNC5(&key);
	if (error == -1)
		return (EFAULT);
	if (error == 1) {
		if (old != owner)
			return (EINVAL);
		error = FUNC8(td, false);
		if (error != 0)
			return (error);
		goto again;
	}
	return (0);
}