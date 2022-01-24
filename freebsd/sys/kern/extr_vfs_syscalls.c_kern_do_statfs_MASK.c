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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_2__ {scalar_t__* val; } ;
struct statfs {TYPE_1__ f_fsid; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  PRIV_VFS_GENERATION ; 
 int FUNC0 (struct mount*,struct statfs*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mount*,struct statfs*) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, struct mount *mp, struct statfs *buf)
{
	int error;

	if (mp == NULL)
		return (EBADF);
	error = FUNC4(mp, 0);
	FUNC5(mp);
	if (error != 0)
		return (error);
#ifdef MAC
	error = mac_mount_check_stat(td->td_ucred, mp);
	if (error != 0)
		goto out;
#endif
	error = FUNC0(mp, buf);
	if (error != 0)
		goto out;
	if (FUNC3(td, PRIV_VFS_GENERATION)) {
		buf->f_fsid.val[0] = buf->f_fsid.val[1] = 0;
		FUNC2(td->td_ucred, mp, buf);
	}
out:
	FUNC6(mp);
	return (error);
}