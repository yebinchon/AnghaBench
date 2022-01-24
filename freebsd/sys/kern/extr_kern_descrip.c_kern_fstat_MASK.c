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
struct thread {int /*<<< orphan*/  td_ucred; int /*<<< orphan*/  td_proc; } ;
struct stat {scalar_t__ st_btim_ext; scalar_t__ st_ctim_ext; scalar_t__ st_mtim_ext; scalar_t__ st_atim_ext; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct file*) ; 
 scalar_t__ FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_STRUCT ; 
 int /*<<< orphan*/  cap_fstat_rights ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC5 (struct file*,struct stat*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct stat*) ; 

int
FUNC7(struct thread *td, int fd, struct stat *sbp)
{
	struct file *fp;
	int error;

	FUNC0(fd);

	error = FUNC4(td, fd, &cap_fstat_rights, &fp);
	if (error != 0)
		return (error);

	FUNC1(td->td_proc, fp);

	error = FUNC5(fp, sbp, td->td_ucred, td);
	FUNC3(fp, td);
#ifdef __STAT_TIME_T_EXT
	if (error == 0) {
		sbp->st_atim_ext = 0;
		sbp->st_mtim_ext = 0;
		sbp->st_ctim_ext = 0;
		sbp->st_btim_ext = 0;
	}
#endif
#ifdef KTRACE
	if (error == 0 && KTRPOINT(td, KTR_STRUCT))
		ktrstat(sbp);
#endif
	return (error);
}