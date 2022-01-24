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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct tty {int /*<<< orphan*/  t_mtxobj; int /*<<< orphan*/ * t_mtx; int /*<<< orphan*/  t_outserwait; int /*<<< orphan*/  t_dcdwait; int /*<<< orphan*/  t_bgwait; int /*<<< orphan*/  t_outwait; int /*<<< orphan*/  t_inwait; TYPE_1__ t_outpoll; TYPE_1__ t_inpoll; int /*<<< orphan*/  t_outq; int /*<<< orphan*/  t_inq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct tty *tp = arg;

	/*
	 * ttyydev_leave() usually frees the i/o queues earlier, but it is
	 * not always called between queue allocation and here.  The queues
	 * may be allocated by ioctls on a pty control device without the
	 * corresponding pty slave device ever being open, or after it is
	 * closed.
	 */
	FUNC6(&tp->t_inq);
	FUNC7(&tp->t_outq);
	FUNC4(&tp->t_inpoll);
	FUNC4(&tp->t_outpoll);
	FUNC2(&tp->t_inpoll.si_note);
	FUNC2(&tp->t_outpoll.si_note);

	FUNC0(&tp->t_inwait);
	FUNC0(&tp->t_outwait);
	FUNC0(&tp->t_bgwait);
	FUNC0(&tp->t_dcdwait);
	FUNC0(&tp->t_outserwait);

	if (tp->t_mtx == &tp->t_mtxobj)
		FUNC3(&tp->t_mtxobj);
	FUNC5(tp);
	FUNC1(tp, M_TTY);
}