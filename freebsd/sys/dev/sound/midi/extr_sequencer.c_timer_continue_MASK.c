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
struct timeval {int dummy; } ;
struct seq_softc {int timerrun; int /*<<< orphan*/  timersub; int /*<<< orphan*/  timerstop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct seq_softc *t)
{
	struct timeval now;

	if (t->timerrun == 1)
		return;
	t->timerrun = 1;
	FUNC0(&now);
	FUNC2(&now, &t->timerstop);
	FUNC1(&t->timersub, &now);
}