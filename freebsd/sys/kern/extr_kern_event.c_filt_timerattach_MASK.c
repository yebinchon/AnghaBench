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
struct kq_timer_cb_data {int /*<<< orphan*/  c; } ;
struct TYPE_2__ {struct kq_timer_cb_data* p_v; } ;
struct knote {int kn_sfflags; TYPE_1__ kn_ptr; int /*<<< orphan*/  kn_status; int /*<<< orphan*/  kn_flags; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_CLEAR ; 
 int /*<<< orphan*/  KN_DETACHED ; 
 int /*<<< orphan*/  M_KQUEUE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NOTE_ABSTIME ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct knote*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct knote*,int /*<<< orphan*/ *) ; 
 unsigned int kq_calloutmax ; 
 unsigned int kq_ncallouts ; 
 struct kq_timer_cb_data* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct knote *kn)
{
	struct kq_timer_cb_data *kc;
	sbintime_t to;
	unsigned int ncallouts;
	int error;

	error = FUNC3(kn, &to);
	if (error != 0)
		return (error);

	do {
		ncallouts = kq_ncallouts;
		if (ncallouts >= kq_calloutmax)
			return (ENOMEM);
	} while (!FUNC0(&kq_ncallouts, ncallouts, ncallouts + 1));

	if ((kn->kn_sfflags & NOTE_ABSTIME) == 0)
		kn->kn_flags |= EV_CLEAR;	/* automatically set */
	kn->kn_status &= ~KN_DETACHED;		/* knlist_add clears it */
	kn->kn_ptr.p_v = kc = FUNC4(sizeof(*kc), M_KQUEUE, M_WAITOK);
	FUNC1(&kc->c, 1);
	FUNC2(kn, to);

	return (0);
}