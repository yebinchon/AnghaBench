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
struct vmspace {int dummy; } ;
struct thread {int dummy; } ;
struct image_args {int dummy; } ;
struct __mac_execve_args {int /*<<< orphan*/  mac_p; int /*<<< orphan*/  envv; int /*<<< orphan*/  argv; int /*<<< orphan*/  fname; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (struct image_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct image_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int,struct vmspace*) ; 
 int FUNC3 (struct thread*,struct vmspace**) ; 

int
FUNC4(struct thread *td, struct __mac_execve_args *uap)
{
#ifdef MAC
	struct image_args args;
	struct vmspace *oldvmspace;
	int error;

	error = pre_execve(td, &oldvmspace);
	if (error != 0)
		return (error);
	error = exec_copyin_args(&args, uap->fname, UIO_USERSPACE,
	    uap->argv, uap->envv);
	if (error == 0)
		error = kern_execve(td, &args, uap->mac_p);
	post_execve(td, error, oldvmspace);
	return (error);
#else
	return (ENOSYS);
#endif
}