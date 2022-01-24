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
struct tty {scalar_t__ t_sessioncnt; int /*<<< orphan*/ * t_pgrp; struct session* t_session; } ;
struct session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 

void
FUNC2(struct tty *tp, struct session *sess)
{

	FUNC0(tp->t_sessioncnt > 0);

	/* Current session has left. */
	if (tp->t_session == sess) {
		tp->t_session = NULL;
		FUNC0(tp->t_pgrp == NULL);
	}
	tp->t_sessioncnt--;
	FUNC1(tp);
}