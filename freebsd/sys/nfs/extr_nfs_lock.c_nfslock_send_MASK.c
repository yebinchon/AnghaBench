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
struct __lock_msg {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  M_NFSLOCK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct __lock_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct __lock_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm_link ; 
 struct __lock_msg* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __lock_msg*,struct __lock_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfslock_isopen ; 
 int /*<<< orphan*/  nfslock_list ; 
 int /*<<< orphan*/  nfslock_mtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct __lock_msg *lm)
{
	struct __lock_msg *lm2;
	int error;

	error = 0;
	lm2 = FUNC2(sizeof *lm2, M_NFSLOCK, M_WAITOK);
	FUNC4(&nfslock_mtx);
	if (nfslock_isopen) {
		FUNC3(lm2, lm, sizeof *lm2);
		FUNC0(&nfslock_list, lm2, lm_link);
		FUNC6(&nfslock_list);
	} else {
		error = EOPNOTSUPP;
	}
	FUNC5(&nfslock_mtx);
	if (error)
		FUNC1(lm2, M_NFSLOCK);
	return (error);
}