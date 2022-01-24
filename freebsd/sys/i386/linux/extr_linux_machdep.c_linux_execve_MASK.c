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
struct linux_execve_args {int /*<<< orphan*/  envp; int /*<<< orphan*/  argp; int /*<<< orphan*/  path; } ;
struct image_args {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (struct image_args*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,struct image_args*) ; 

int
FUNC4(struct thread *td, struct linux_execve_args *args)
{
	struct image_args eargs;
	char *newpath;
	int error;

	FUNC0(td, args->path, &newpath);

	error = FUNC1(&eargs, newpath, UIO_SYSSPACE,
	    args->argp, args->envp);
	FUNC2(newpath, M_TEMP);
	if (error == 0)
		error = FUNC3(td, &eargs);
	return (error);
}