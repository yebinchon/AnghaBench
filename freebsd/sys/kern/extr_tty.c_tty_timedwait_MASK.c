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
struct tty {int t_revokecnt; int /*<<< orphan*/  t_mtx; } ;
struct cv {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int ERESTART ; 
 int MA_NOTRECURSED ; 
 int MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int) ; 

int
FUNC4(struct tty *tp, struct cv *cv, int hz)
{
	int error;
	int revokecnt = tp->t_revokecnt;

	FUNC3(tp, MA_OWNED|MA_NOTRECURSED);
	FUNC0(!FUNC2(tp));

	error = FUNC1(cv, tp->t_mtx, hz);

	/* Bail out when the device slipped away. */
	if (FUNC2(tp))
		return (ENXIO);

	/* Restart the system call when we may have been revoked. */
	if (tp->t_revokecnt != revokecnt)
		return (ERESTART);

	return (error);
}