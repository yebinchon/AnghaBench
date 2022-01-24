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
struct thread {int dummy; } ;
struct file {TYPE_1__* f_ops; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int fo_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DFLAG_SEEKABLE ; 
 int ESPIPE ; 
 int /*<<< orphan*/  cap_seek_rights ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int,struct thread*) ; 

int
FUNC4(struct thread *td, int fd, off_t offset, int whence)
{
	struct file *fp;
	int error;

	FUNC0(fd);
	error = FUNC2(td, fd, &cap_seek_rights, &fp);
	if (error != 0)
		return (error);
	error = (fp->f_ops->fo_flags & DFLAG_SEEKABLE) != 0 ?
	    FUNC3(fp, offset, whence, td) : ESPIPE;
	FUNC1(fp, td);
	return (error);
}