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
struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  cap_write_rights ; 
 int FUNC0 (struct thread*,int,struct file*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 

int
FUNC3(struct thread *td, int fd, struct uio *auio)
{
	struct file *fp;
	int error;

	error = FUNC2(td, fd, &cap_write_rights, &fp);
	if (error)
		return (error);
	error = FUNC0(td, fd, fp, auio, (off_t)-1, 0);
	FUNC1(fp, td);
	return (error);
}