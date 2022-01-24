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
struct filecaps {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,struct file**) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,struct file*,int*,int,struct filecaps*) ; 

int
FUNC3(struct thread *td, struct file **resultfp, int *resultfd, int flags,
    struct filecaps *fcaps)
{
	struct file *fp;
	int error, fd;

	error = FUNC0(td, &fp);
	if (error)
		return (error);		/* no reference held on error */

	error = FUNC2(td, fp, &fd, flags, fcaps);
	if (error) {
		FUNC1(fp, td);		/* one reference (fp only) */
		return (error);
	}

	if (resultfp != NULL)
		*resultfp = fp;		/* copy out result */
	else
		FUNC1(fp, td);		/* release local reference */

	if (resultfd != NULL)
		*resultfd = fd;

	return (0);
}