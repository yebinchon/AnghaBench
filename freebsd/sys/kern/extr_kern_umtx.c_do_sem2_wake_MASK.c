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
struct umtx_key {int dummy; } ;
struct thread {int dummy; } ;
struct _usem2 {int /*<<< orphan*/  _count; int /*<<< orphan*/  _flags; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TYPE_SEM ; 
 int USEM_HAS_WAITERS ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (struct _usem2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct umtx_key*) ; 
 int FUNC6 (struct thread*,int) ; 
 int FUNC7 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC8 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC9 (struct umtx_key*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC11 (struct umtx_key*) ; 

__attribute__((used)) static int
FUNC12(struct thread *td, struct _usem2 *sem)
{
	struct umtx_key key;
	int error, cnt, rv;
	uint32_t count, flags;

	rv = FUNC2(&sem->_flags, &flags);
	if (rv == -1)
		return (EFAULT);
	if ((error = FUNC3(sem, TYPE_SEM, FUNC0(flags), &key)) != 0)
		return (error);	
	FUNC8(&key);
	FUNC5(&key);
	cnt = FUNC7(&key);
	if (cnt > 0) {
		/*
		 * If this was the last sleeping thread, clear the waiters
		 * flag in _count.
		 */
		if (cnt == 1) {
			FUNC11(&key);
			rv = FUNC2(&sem->_count, &count);
			while (rv != -1 && count & USEM_HAS_WAITERS) {
				rv = FUNC1(&sem->_count, count, &count,
				    count & ~USEM_HAS_WAITERS);
				if (rv == 1) {
					rv = FUNC6(td, true);
					if (rv != 0)
						break;
				}
			}
			if (rv == -1)
				error = EFAULT;
			else if (rv > 0) {
				error = rv;
			}
			FUNC8(&key);
		}

		FUNC9(&key, 1);
	}
	FUNC10(&key);
	FUNC11(&key);
	FUNC4(&key);
	return (error);
}