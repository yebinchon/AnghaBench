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
struct uio {int uio_resid; } ;
struct cdev {int dummy; } ;
struct __lock_msg {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  M_NFSLOCK ; 
 int PCATCH ; 
 int PSOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct __lock_msg* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct __lock_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __lock_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm_link ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfslock_list ; 
 int /*<<< orphan*/  nfslock_mtx ; 
 int FUNC7 (struct __lock_msg*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	int error;
	struct __lock_msg *lm;

	if (uio->uio_resid != sizeof *lm)
		return (EOPNOTSUPP);
	lm = NULL;
	error = 0;
	FUNC5(&nfslock_mtx);
	while (FUNC0(&nfslock_list)) {
		error = FUNC4(&nfslock_list, &nfslock_mtx, PSOCK | PCATCH,
		    "nfslockd", 0);
		if (error)
			break;
	}
	if (!error) {
		lm = FUNC1(&nfslock_list);
		FUNC2(&nfslock_list, lm, lm_link);
	}
	FUNC6(&nfslock_mtx);
	if (!error) {
		error = FUNC7(lm, sizeof *lm, uio);
		FUNC3(lm, M_NFSLOCK);
	}
	return (error);
}