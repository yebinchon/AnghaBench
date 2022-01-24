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
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct kqueue {int dummy; } ;
struct kevent_copyops {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct kqueue**) ; 
 int FUNC1 (struct kqueue*,struct thread*,int,int,struct kevent_copyops*,struct timespec const*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqueue*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct file *fp, int nchanges, int nevents,
    struct kevent_copyops *k_ops, const struct timespec *timeout)
{
	struct kqueue *kq;
	int error;

	error = FUNC0(fp, &kq);
	if (error != 0)
		return (error);
	error = FUNC1(kq, td, nchanges, nevents, k_ops, timeout);
	FUNC2(kq, 0);
	return (error);
}