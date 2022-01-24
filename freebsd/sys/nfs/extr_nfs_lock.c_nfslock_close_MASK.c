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
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct __lock_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NFSLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct __lock_msg* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct __lock_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __lock_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm_link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfslock_isopen ; 
 int /*<<< orphan*/  nfslock_list ; 
 int /*<<< orphan*/  nfslock_mtx ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
	struct __lock_msg *lm;

	FUNC4(&nfslock_mtx);
	nfslock_isopen = 0;
	while (!FUNC0(&nfslock_list)) {
		lm = FUNC1(&nfslock_list);
		/* XXX: answer request */
		FUNC2(&nfslock_list, lm, lm_link);
		FUNC3(lm, M_NFSLOCK);
	}
	FUNC5(&nfslock_mtx);
	return (0);
}