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
struct kqueue {int dummy; } ;
struct kevent {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_KQUEUE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC3 (struct file*,struct kqueue**) ; 
 int FUNC4 (struct kqueue*,struct kevent*,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kqueue*,int /*<<< orphan*/ ) ; 

int 
FUNC6(int fd, struct kevent *kev, struct thread *td, int mflag)
{
	struct kqueue *kq;
	struct file *fp;
	cap_rights_t rights;
	int error;

	error = FUNC2(td, fd, FUNC0(&rights, CAP_KQUEUE_CHANGE), &fp);
	if (error != 0)
		return (error);
	if ((error = FUNC3(fp, &kq)) != 0)
		goto noacquire;

	error = FUNC4(kq, kev, td, mflag);
	FUNC5(kq, 0);

noacquire:
	FUNC1(fp, td);
	return (error);
}