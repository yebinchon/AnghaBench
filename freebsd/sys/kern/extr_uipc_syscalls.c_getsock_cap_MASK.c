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
typedef  int /*<<< orphan*/  u_int ;
struct thread {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {scalar_t__ f_type; int /*<<< orphan*/  f_flag; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 scalar_t__ DTYPE_SOCKET ; 
 int ENOTSOCK ; 
 int /*<<< orphan*/  FUNC0 (struct file*,struct thread*) ; 
 int FUNC1 (struct thread*,int,int /*<<< orphan*/ *,struct file**,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC2 (struct filecaps*) ; 

int
FUNC3(struct thread *td, int fd, cap_rights_t *rightsp,
    struct file **fpp, u_int *fflagp, struct filecaps *havecapsp)
{
	struct file *fp;
	int error;

	error = FUNC1(td, fd, rightsp, &fp, havecapsp);
	if (error != 0)
		return (error);
	if (fp->f_type != DTYPE_SOCKET) {
		FUNC0(fp, td);
		if (havecapsp != NULL)
			FUNC2(havecapsp);
		return (ENOTSOCK);
	}
	if (fflagp != NULL)
		*fflagp = fp->f_flag;
	*fpp = fp;
	return (0);
}