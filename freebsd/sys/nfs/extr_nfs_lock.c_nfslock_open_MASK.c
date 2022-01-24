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

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PRIV_NFS_LOCKD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int nfslock_isopen ; 
 int /*<<< orphan*/  nfslock_mtx ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	int error;

	error = FUNC2(td, PRIV_NFS_LOCKD);
	if (error)
		return (error);

	FUNC0(&nfslock_mtx);
	if (!nfslock_isopen) {
		error = 0;
		nfslock_isopen = 1;
	} else {
		error = EOPNOTSUPP;
	}
	FUNC1(&nfslock_mtx);
		
	return (error);
}