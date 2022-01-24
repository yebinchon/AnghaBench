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
struct tty {scalar_t__ t_sessioncnt; struct pgrp* t_pgrp; } ;
struct pgrp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 

void
FUNC3(struct tty *tp, struct pgrp *pg)
{

	FUNC0(tp->t_sessioncnt > 0);
	FUNC1(tp, MA_OWNED);

	if (tp->t_pgrp == pg)
		tp->t_pgrp = NULL;

	FUNC2(tp);
}