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
struct kq_timer_cb_data {scalar_t__ to; int /*<<< orphan*/  next; int /*<<< orphan*/  c; } ;
struct TYPE_2__ {struct kq_timer_cb_data* p_v; } ;
struct knote {int kn_flags; TYPE_1__ kn_ptr; int /*<<< orphan*/  kn_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_ABSOLUTE ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*),struct knote*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 

__attribute__((used)) static void
FUNC3(void *knx)
{
	struct knote *kn;
	struct kq_timer_cb_data *kc;

	kn = knx;
	kn->kn_data++;
	FUNC0(kn, 0);	/* XXX - handle locking */

	if ((kn->kn_flags & EV_ONESHOT) != 0)
		return;
	kc = kn->kn_ptr.p_v;
	if (kc->to == 0)
		return;
	kc->next += kc->to;
	FUNC2(&kc->c, kc->next, 0, filt_timerexpire, kn,
	    FUNC1(cpuid), C_ABSOLUTE);
}