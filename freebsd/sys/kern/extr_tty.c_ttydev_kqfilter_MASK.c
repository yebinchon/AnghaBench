#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct tty {TYPE_2__ t_outpoll; TYPE_1__ t_inpoll; } ;
struct knote {int kn_filter; int /*<<< orphan*/ * kn_fop; struct tty* kn_hook; } ;
struct cdev {struct tty* si_drv1; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EVFILT_READ 129 
#define  EVFILT_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int) ; 
 int /*<<< orphan*/  tty_kqops_read ; 
 int /*<<< orphan*/  tty_kqops_write ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int FUNC2 (struct tty*) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, struct knote *kn)
{
	struct tty *tp = dev->si_drv1;
	int error;

	error = FUNC2(tp);
	if (error)
		return (error);

	switch (kn->kn_filter) {
	case EVFILT_READ:
		kn->kn_hook = tp;
		kn->kn_fop = &tty_kqops_read;
		FUNC0(&tp->t_inpoll.si_note, kn, 1);
		break;
	case EVFILT_WRITE:
		kn->kn_hook = tp;
		kn->kn_fop = &tty_kqops_write;
		FUNC0(&tp->t_outpoll.si_note, kn, 1);
		break;
	default:
		error = EINVAL;
		break;
	}

	FUNC1(tp);
	return (error);
}