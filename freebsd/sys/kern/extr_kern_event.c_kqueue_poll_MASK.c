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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct kqueue {int /*<<< orphan*/  kq_state; int /*<<< orphan*/  kq_sel; scalar_t__ kq_count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kqueue*) ; 
 int /*<<< orphan*/  KQ_SEL ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*) ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*,struct kqueue**) ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct file *fp, int events, struct ucred *active_cred,
	struct thread *td)
{
	struct kqueue *kq;
	int revents = 0;
	int error;

	if ((error = FUNC3(fp, &kq)))
		return POLLERR;

	FUNC0(kq);
	if (events & (POLLIN | POLLRDNORM)) {
		if (kq->kq_count) {
			revents |= events & (POLLIN | POLLRDNORM);
		} else {
			FUNC5(td, &kq->kq_sel);
			if (FUNC2(&kq->kq_sel))
				kq->kq_state |= KQ_SEL;
		}
	}
	FUNC4(kq, 1);
	FUNC1(kq);
	return (revents);
}