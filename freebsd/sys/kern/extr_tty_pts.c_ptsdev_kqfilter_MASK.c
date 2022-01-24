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
struct tty {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct pts_softc {TYPE_2__ pts_inpoll; TYPE_1__ pts_outpoll; } ;
struct knote {int kn_filter; int /*<<< orphan*/ * kn_fop; } ;
struct file {struct tty* f_data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EVFILT_READ 129 
#define  EVFILT_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int) ; 
 int /*<<< orphan*/  pts_kqops_read ; 
 int /*<<< orphan*/  pts_kqops_write ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 struct pts_softc* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

__attribute__((used)) static int
FUNC4(struct file *fp, struct knote *kn)
{
	struct tty *tp = fp->f_data;
	struct pts_softc *psc = FUNC2(tp);
	int error = 0;

	FUNC1(tp);

	switch (kn->kn_filter) {
	case EVFILT_READ:
		kn->kn_fop = &pts_kqops_read;
		FUNC0(&psc->pts_outpoll.si_note, kn, 1);
		break;
	case EVFILT_WRITE:
		kn->kn_fop = &pts_kqops_write;
		FUNC0(&psc->pts_inpoll.si_note, kn, 1);
		break;
	default:
		error = EINVAL;
		break;
	}

	FUNC3(tp);
	return (error);
}