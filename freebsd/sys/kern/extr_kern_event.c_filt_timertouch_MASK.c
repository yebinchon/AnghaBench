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
typedef  int u_long ;
struct kqueue {int dummy; } ;
struct kq_timer_cb_data {int /*<<< orphan*/  c; } ;
struct kevent {int flags; int /*<<< orphan*/  data; int /*<<< orphan*/  fflags; } ;
struct TYPE_2__ {struct kq_timer_cb_data* p_v; } ;
struct knote {int kn_status; int kn_data; int kn_flags; int /*<<< orphan*/  kn_fflags; struct kevent kn_kevent; int /*<<< orphan*/  kn_sdata; int /*<<< orphan*/  kn_sfflags; struct kqueue* kn_kq; TYPE_1__ kn_ptr; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
#define  EVENT_PROCESS 129 
#define  EVENT_REGISTER 128 
 int EV_ADD ; 
 int EV_CLEAR ; 
 int EV_ERROR ; 
 int KN_ACTIVE ; 
 int KN_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct knote*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct knote*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct knote*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7(struct knote *kn, struct kevent *kev, u_long type)
{
	struct kq_timer_cb_data *kc;	
	struct kqueue *kq;
	sbintime_t to;
	int error;

	switch (type) {
	case EVENT_REGISTER:
		/* Handle re-added timers that update data/fflags */
		if (kev->flags & EV_ADD) {
			kc = kn->kn_ptr.p_v;

			/* Drain any existing callout. */
			FUNC2(&kc->c);

			/* Throw away any existing undelivered record
			 * of the timer expiration. This is done under
			 * the presumption that if a process is
			 * re-adding this timer with new parameters,
			 * it is no longer interested in what may have
			 * happened under the old parameters. If it is
			 * interested, it can wait for the expiration,
			 * delete the old timer definition, and then
			 * add the new one.
			 *
			 * This has to be done while the kq is locked:
			 *   - if enqueued, dequeue
			 *   - make it no longer active
			 *   - clear the count of expiration events
			 */
			kq = kn->kn_kq;
			FUNC0(kq);
			if (kn->kn_status & KN_QUEUED)
				FUNC5(kn);

			kn->kn_status &= ~KN_ACTIVE;
			kn->kn_data = 0;
			FUNC1(kq);
			
			/* Reschedule timer based on new data/fflags */
			kn->kn_sfflags = kev->fflags;
			kn->kn_sdata = kev->data;
			error = FUNC4(kn, &to);
			if (error != 0) {
			  	kn->kn_flags |= EV_ERROR;
				kn->kn_data = error;
			} else
			  	FUNC3(kn, to);
		}
		break;

        case EVENT_PROCESS:
		*kev = kn->kn_kevent;
		if (kn->kn_flags & EV_CLEAR) {
			kn->kn_data = 0;
			kn->kn_fflags = 0;
		}
		break;

	default:
		FUNC6("filt_timertouch() - invalid type (%ld)", type);
		break;
	}
}