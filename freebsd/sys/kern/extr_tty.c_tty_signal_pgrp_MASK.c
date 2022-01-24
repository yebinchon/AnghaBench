#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int c_lflag; } ;
struct tty {int /*<<< orphan*/ * t_pgrp; TYPE_1__ t_termios; int /*<<< orphan*/  t_flags; } ;
struct TYPE_6__ {int ksi_signo; int /*<<< orphan*/  ksi_code; } ;
typedef  TYPE_2__ ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NOKERNINFO ; 
 int NSIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int SIGINFO ; 
 int /*<<< orphan*/  SI_KERNEL ; 
 int /*<<< orphan*/  TF_STOPPED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct tty *tp, int sig)
{
	ksiginfo_t ksi;

	FUNC6(tp, MA_OWNED);
	FUNC0(sig >= 1 && sig < NSIG);

	/* Make signals start output again. */
	tp->t_flags &= ~TF_STOPPED;

	if (sig == SIGINFO && !(tp->t_termios.c_lflag & NOKERNINFO))
		FUNC5(tp);
	if (tp->t_pgrp != NULL) {
		FUNC3(&ksi);
		ksi.ksi_signo = sig;
		ksi.ksi_code = SI_KERNEL;
		FUNC1(tp->t_pgrp);
		FUNC4(tp->t_pgrp, sig, 1, &ksi);
		FUNC2(tp->t_pgrp);
	}
}