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
struct knote {int kn_sdata; int kn_flags; int kn_sfflags; } ;
struct bintime {int dummy; } ;
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 int EINVAL ; 
 int EV_ONESHOT ; 
 int NOTE_ABSTIME ; 
 int NOTE_TIMER_PRECMASK ; 
 scalar_t__ FUNC0 (struct bintime) ; 
 int /*<<< orphan*/  FUNC1 (struct bintime*) ; 
 scalar_t__ FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, sbintime_t *to)
{
	struct bintime bt;
	sbintime_t sbt;

	if (kn->kn_sdata < 0)
		return (EINVAL);
	if (kn->kn_sdata == 0 && (kn->kn_flags & EV_ONESHOT) == 0)
		kn->kn_sdata = 1;
	/*
	 * The only fflags values supported are the timer unit
	 * (precision) and the absolute time indicator.
	 */
	if ((kn->kn_sfflags & ~(NOTE_TIMER_PRECMASK | NOTE_ABSTIME)) != 0)
		return (EINVAL);

	*to = FUNC2(kn->kn_sdata, kn->kn_sfflags);
	if ((kn->kn_sfflags & NOTE_ABSTIME) != 0) {
		FUNC1(&bt);
		sbt = FUNC0(bt);
		*to -= sbt;
	}
	if (*to < 0)
		return (EINVAL);
	return (0);
}