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
struct umutex {int /*<<< orphan*/  m_owner; int /*<<< orphan*/  m_flags; } ;
struct umtx_key {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TYPE_NORMAL_UMUTEX ; 
 int UMUTEX_CONTESTED ; 
 int UMUTEX_RB_NOTRECOV ; 
 int UMUTEX_RB_OWNERDEAD ; 
 int /*<<< orphan*/  UMUTEX_UNOWNED ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (struct umutex*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct umtx_key*) ; 
 int FUNC7 (struct thread*,int) ; 
 int FUNC8 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC9 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct umtx_key*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC12 (struct umtx_key*) ; 

__attribute__((used)) static int
FUNC13(struct thread *td, struct umutex *m)
{
	struct umtx_key key;
	uint32_t owner;
	uint32_t flags;
	int error;
	int count;

again:
	error = FUNC3(&m->m_owner, &owner);
	if (error == -1)
		return (EFAULT);

	if ((owner & ~UMUTEX_CONTESTED) != 0 && owner != UMUTEX_RB_OWNERDEAD &&
	    owner != UMUTEX_RB_NOTRECOV)
		return (0);

	error = FUNC3(&m->m_flags, &flags);
	if (error == -1)
		return (EFAULT);

	/* We should only ever be in here for contested locks */
	if ((error = FUNC4(m, TYPE_NORMAL_UMUTEX, FUNC0(flags),
	    &key)) != 0)
		return (error);

	FUNC9(&key);
	FUNC6(&key);
	count = FUNC8(&key);
	FUNC12(&key);

	if (count <= 1 && owner != UMUTEX_RB_OWNERDEAD &&
	    owner != UMUTEX_RB_NOTRECOV) {
		error = FUNC2(&m->m_owner, UMUTEX_CONTESTED, &owner,
		    UMUTEX_UNOWNED);
		if (error == -1) {
			error = EFAULT;
		} else if (error == 1) {
			FUNC9(&key);
			FUNC11(&key);
			FUNC12(&key);
			FUNC5(&key);
			error = FUNC7(td, false);
			if (error != 0)
				return (error);
			goto again;
		}
	}

	FUNC9(&key);
	if (error == 0 && count != 0) {
		FUNC1((owner & ~UMUTEX_CONTESTED) == 0 ||
		    owner == UMUTEX_RB_OWNERDEAD ||
		    owner == UMUTEX_RB_NOTRECOV);
		FUNC10(&key, 1);
	}
	FUNC11(&key);
	FUNC12(&key);
	FUNC5(&key);
	return (error);
}