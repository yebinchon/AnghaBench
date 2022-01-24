#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct tty {int t_flags; int /*<<< orphan*/  t_dcdwait; TYPE_2__ t_outpoll; TYPE_1__ t_inpoll; scalar_t__ t_outlow; int /*<<< orphan*/  t_outq; scalar_t__ t_inlow; int /*<<< orphan*/  t_inq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int TF_OPENCLOSE ; 
 struct tty* constty ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct tty *tp)
{

	FUNC5(tp, MA_OWNED);

	if (FUNC6(tp) || tp->t_flags & TF_OPENCLOSE) {
		/* Device is still opened somewhere. */
		FUNC8(tp);
		return;
	}

	tp->t_flags |= TF_OPENCLOSE;

	/* Remove console TTY. */
	if (constty == tp)
		FUNC0();

	/* Drain any output. */
	if (!FUNC4(tp))
		FUNC3(tp, 1);

	FUNC10(tp);

	/* Free i/o queues now since they might be large. */
	FUNC11(&tp->t_inq);
	tp->t_inlow = 0;
	FUNC12(&tp->t_outq);
	tp->t_outlow = 0;

	FUNC2(&tp->t_inpoll.si_note, 1);
	FUNC2(&tp->t_outpoll.si_note, 1);

	if (!FUNC4(tp))
		FUNC9(tp);

	tp->t_flags &= ~TF_OPENCLOSE;
	FUNC1(&tp->t_dcdwait);
	FUNC7(tp);
}