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
typedef  scalar_t__ u_char ;
struct thread {scalar_t__ td_pri_class; scalar_t__ td_user_pri; } ;
struct rtprio {scalar_t__ prio; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PRI_MAX_TIMESHARE ; 
 scalar_t__ PRI_MIN_IDLE ; 
 scalar_t__ PRI_MIN_REALTIME ; 
 scalar_t__ PRI_MIN_TIMESHARE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  RTP_PRIO_IDLE 130 
 scalar_t__ RTP_PRIO_MAX ; 
#define  RTP_PRIO_NORMAL 129 
#define  RTP_PRIO_REALTIME 128 
 scalar_t__ FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*,scalar_t__) ; 

int
FUNC10(struct rtprio *rtp, struct thread *td)
{
	u_char  newpri, oldclass, oldpri;

	switch (FUNC0(rtp->type)) {
	case RTP_PRIO_REALTIME:
		if (rtp->prio > RTP_PRIO_MAX)
			return (EINVAL);
		newpri = PRI_MIN_REALTIME + rtp->prio;
		break;
	case RTP_PRIO_NORMAL:
		if (rtp->prio > (PRI_MAX_TIMESHARE - PRI_MIN_TIMESHARE))
			return (EINVAL);
		newpri = PRI_MIN_TIMESHARE + rtp->prio;
		break;
	case RTP_PRIO_IDLE:
		if (rtp->prio > RTP_PRIO_MAX)
			return (EINVAL);
		newpri = PRI_MIN_IDLE + rtp->prio;
		break;
	default:
		return (EINVAL);
	}

	FUNC7(td);
	oldclass = td->td_pri_class;
	FUNC4(td, rtp->type);	/* XXX fix */
	oldpri = td->td_user_pri;
	FUNC6(td, newpri);
	if (td->td_user_pri != oldpri && (oldclass != RTP_PRIO_NORMAL ||
	    td->td_pri_class != RTP_PRIO_NORMAL))
		FUNC5(td, td->td_user_pri);
	if (FUNC1(td) && oldpri != newpri) {
		FUNC2();
		FUNC8(td);
		FUNC9(td, oldpri);
		FUNC3();
	} else
		FUNC8(td);
	return (0);
}