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
struct kqueue {int kq_refcnt; } ;
struct kevent_copyops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqueue*) ; 
 int FUNC3 (struct kqueue*,struct thread*,int,int,struct kevent_copyops*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct thread *td, int nevents,
    struct kevent_copyops *k_ops)
{
	struct kqueue kq = {};
	int error;

	FUNC2(&kq);
	kq.kq_refcnt = 1;
	error = FUNC3(&kq, td, nevents, nevents, k_ops, NULL);
	FUNC1(&kq, td);
	FUNC0(&kq);
	return (error);
}