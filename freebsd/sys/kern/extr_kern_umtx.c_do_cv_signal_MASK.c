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
typedef  int /*<<< orphan*/  uint32_t ;
struct umtx_key {int dummy; } ;
struct ucond {int /*<<< orphan*/  c_has_waiters; int /*<<< orphan*/  c_flags; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_CV ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ucond*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct umtx_key*) ; 
 int FUNC6 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC7 (struct umtx_key*) ; 
 int FUNC8 (struct umtx_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct umtx_key*) ; 

__attribute__((used)) static int
FUNC11(struct thread *td, struct ucond *cv)
{
	struct umtx_key key;
	int error, cnt, nwake;
	uint32_t flags;

	error = FUNC1(&cv->c_flags, &flags);
	if (error == -1)
		return (EFAULT);
	if ((error = FUNC3(cv, TYPE_CV, FUNC0(flags), &key)) != 0)
		return (error);	
	FUNC7(&key);
	FUNC5(&key);
	cnt = FUNC6(&key);
	nwake = FUNC8(&key, 1);
	if (cnt <= nwake) {
		FUNC10(&key);
		error = FUNC2(&cv->c_has_waiters, 0);
		if (error == -1)
			error = EFAULT;
		FUNC7(&key);
	}
	FUNC9(&key);
	FUNC10(&key);
	FUNC4(&key);
	return (error);
}