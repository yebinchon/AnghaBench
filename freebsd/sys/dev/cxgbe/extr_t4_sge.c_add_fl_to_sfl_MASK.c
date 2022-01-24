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
struct sge_fl {int flags; } ;
struct adapter {int /*<<< orphan*/  sfl_lock; int /*<<< orphan*/  sfl_callout; int /*<<< orphan*/  sfl; } ;

/* Variables and functions */
 int FL_DOOMED ; 
 int /*<<< orphan*/  FUNC0 (struct sge_fl*) ; 
 int FL_STARVING ; 
 int /*<<< orphan*/  FUNC1 (struct sge_fl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sge_fl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct adapter*) ; 
 int hz ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  refill_sfl ; 

__attribute__((used)) static void
FUNC6(struct adapter *sc, struct sge_fl *fl)
{
	FUNC4(&sc->sfl_lock);
	FUNC0(fl);
	if ((fl->flags & FL_DOOMED) == 0) {
		fl->flags |= FL_STARVING;
		FUNC2(&sc->sfl, fl, link);
		FUNC3(&sc->sfl_callout, hz / 5, refill_sfl, sc);
	}
	FUNC1(fl);
	FUNC5(&sc->sfl_lock);
}